import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gasly/enums/validator_error.dart';
import 'package:email_validator/email_validator.dart';
import 'package:gasly/services/logging_helper.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  AuthBloc(this._auth, this._firestore) : super(const AuthState()) {
    // --- Login ---
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_LoginPressed>(_onLoginPressed);
    on<_LoginSuccessful>(_onLoginSuccessful);
    on<_LoginFailed>(_onLoginFailed);

    // --- Registration ---
    on<_FullNameChanged>(_onFullNameChanged);
    on<_PhoneChanged>(_onPhoneChanged);
    on<_RegisterPressed>(_onRegisterPressed);
    on<_RegisterSuccessful>(_onRegisterSuccessful);
    on<_RegisterFailed>(_onRegisterFailed);

    // --- Forgot Password ---
    on<_ForgotPasswordEmailChanged>(_onForgotPasswordEmailChanged);
    on<_ForgotPasswordPressed>(_onForgotPasswordPressed);
    on<_ForgotPasswordSuccessful>(_onForgotPasswordSuccessful);
    on<_ForgotPasswordFailed>(_onForgotPasswordFailed);

    // --- General ---
    on<_ErrorMessageCleared>(_onErrorMessageCleared);
    on<_LogoutPressed>(_onLogoutPressed);
  }

  void _onEmailChanged(_EmailChanged event, Emitter<AuthState> emit) {
    final email = EmailFormz.dirty(event.email);
    emit(
      state.copyWith(
        email: email.isValid ? email : EmailFormz.pure(event.email),
      ),
    );
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<AuthState> emit) {
    final password = PasswordFormz.dirty(event.password);
    emit(
      state.copyWith(
        password: password.isValid
            ? password
            : PasswordFormz.pure(event.password),
      ),
    );
  }

  void _onLoginPressed(_LoginPressed event, Emitter<AuthState> emit) async {
    if (state.loginStatus == FormzSubmissionStatus.inProgress) return;

    // Force dirty to trigger inline errors on all fields
    if (!state.isLoginFormValid) {
      emit(
        state.copyWith(
          email: EmailFormz.dirty(state.email.value),
          password: PasswordFormz.dirty(state.password.value),
          errorMessage: 'Please fill in all fields correctly.',
        ),
      );
      return;
    }

    emit(state.copyWith(loginStatus: FormzSubmissionStatus.inProgress));

    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );

      final uid = userCredential.user?.uid;
      final doc = await _firestore.collection('users').doc(uid).get();
      final fullName = doc.data()?['fullName'];

      // You can save to SharedPreferences here if needed
      logInfo('Login successful: $uid | $fullName');

      add(const AuthEvent.loginSuccessful());
    } on FirebaseAuthException catch (e, trace) {
      logError(e, trace);
      add(AuthEvent.loginFailed(e.message));
    }
  }

  void _onLoginSuccessful(_LoginSuccessful event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        loginStatus: FormzSubmissionStatus.success,
        user: _auth.currentUser,
        userEmail: _auth.currentUser?.email,
        errorMessage: null,
      ),
    );
  }

  void _onLoginFailed(_LoginFailed event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        loginStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'Login failed. Please try again.',
      ),
    );
    add(AuthEvent.errorMessageCleared());
  }

  void _onFullNameChanged(_FullNameChanged event, Emitter<AuthState> emit) {
    final fullName = FullNameFormz.dirty(event.fullName);
    emit(
      state.copyWith(
        fullName: fullName.isValid
            ? fullName
            : FullNameFormz.pure(event.fullName),
      ),
    );
  }

  void _onPhoneChanged(_PhoneChanged event, Emitter<AuthState> emit) {
    final phone = PhoneFormz.dirty(event.phone);
    emit(
      state.copyWith(
        phone: phone.isValid ? phone : PhoneFormz.pure(event.phone),
      ),
    );
  }

  void _onRegisterPressed(
    _RegisterPressed event,
    Emitter<AuthState> emit,
  ) async {
    if (state.registerStatus == FormzSubmissionStatus.inProgress) return;

    if (!state.isRegisterFormValid) {
      emit(
        state.copyWith(
          email: EmailFormz.dirty(state.email.value),
          password: PasswordFormz.dirty(state.password.value),
          fullName: FullNameFormz.dirty(state.fullName.value),
          phone: PhoneFormz.dirty(state.phone.value),
          errorMessage: 'Please fill in all fields correctly.',
        ),
      );
      return;
    }

    emit(state.copyWith(registerStatus: FormzSubmissionStatus.inProgress));

    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      await _firestore.collection('users').doc(userCredential.user?.uid).set({
        'fullName': state.fullName.value,
        'email': state.email.value,
        'phone': state.phone.value,
        'createdAt': FieldValue.serverTimestamp(),
        'status': 'active',
      });
      add(const AuthEvent.registerSuccessful());
    } on FirebaseAuthException catch (e, trace) {
      logError(e, trace);
      add(AuthEvent.registerFailed(e.message));
    }
  }

  void _onRegisterSuccessful(
    _RegisterSuccessful event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        registerStatus: FormzSubmissionStatus.success,
        user: _auth.currentUser,
        userEmail: _auth.currentUser?.email,
        errorMessage: null,
      ),
    );
  }

  void _onRegisterFailed(_RegisterFailed event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        registerStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'Registration failed. Please try again.',
      ),
    );
  }

  void _onForgotPasswordEmailChanged(
    _ForgotPasswordEmailChanged event,
    Emitter<AuthState> emit,
  ) {
    final forgotPasswordEmail = ForgotPasswordFormz.dirty(event.email);
    emit(
      state.copyWith(
        forgotPasswordEmail: forgotPasswordEmail.isValid
            ? forgotPasswordEmail
            : ForgotPasswordFormz.pure(event.email),
      ),
    );
  }

  void _onForgotPasswordPressed(
    _ForgotPasswordPressed event,
    Emitter<AuthState> emit,
  ) async {
    if (state.forgotPasswordStatus == FormzSubmissionStatus.inProgress) return;

    if (!state.isForgotPasswordFormValid) {
      emit(
        state.copyWith(
          forgotPasswordEmail: ForgotPasswordFormz.dirty(
            state.forgotPasswordEmail.value,
          ),
          errorMessage: 'Please enter a valid email address.',
        ),
      );
      return;
    }

    emit(
      state.copyWith(forgotPasswordStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      await _auth.sendPasswordResetEmail(
        email: state.forgotPasswordEmail.value.trim(),
      );
      add(const AuthEvent.forgotPasswordSuccessful());
    } on FirebaseAuthException catch (e, trace) {
      logError(e, trace);
      add(AuthEvent.forgotPasswordFailed(e.message));
    }
  }

  void _onForgotPasswordSuccessful(
    _ForgotPasswordSuccessful event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        forgotPasswordStatus: FormzSubmissionStatus.success,
        errorMessage: null,
      ),
    );
  }

  void _onForgotPasswordFailed(
    _ForgotPasswordFailed event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        forgotPasswordStatus: FormzSubmissionStatus.failure,
        errorMessage:
            event.message ?? 'Could not send reset email. Please try again.',
      ),
    );
  }

  void _onErrorMessageCleared(
    _ErrorMessageCleared event,
    Emitter<AuthState> emit,
  ) {
    emit(state.copyWith(errorMessage: null));
  }

  void _onLogoutPressed(_LogoutPressed event, Emitter<AuthState> emit) async {
    await _auth.signOut();
    emit(const AuthState());
  }
}
