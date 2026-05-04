part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent() = _AuthEvent;

  // --- Shared Field Events ---
  const factory AuthEvent.emailChanged(String email) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = _PasswordChanged;

  // --- Login Events ---
  const factory AuthEvent.loginPressed() = _LoginPressed;
  const factory AuthEvent.loginSuccessful() = _LoginSuccessful;
  const factory AuthEvent.loginFailed([String? message]) = _LoginFailed;

  // --- Registration Events ---
  const factory AuthEvent.fullNameChanged(String fullName) = _FullNameChanged;
  const factory AuthEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory AuthEvent.registerPressed() = _RegisterPressed;
  const factory AuthEvent.registerSuccessful() = _RegisterSuccessful;
  const factory AuthEvent.registerFailed([String? message]) = _RegisterFailed;

  // --- Forgot Password Events ---
  const factory AuthEvent.forgotPasswordEmailChanged(String email) =
      _ForgotPasswordEmailChanged;
  const factory AuthEvent.forgotPasswordPressed() = _ForgotPasswordPressed;
  const factory AuthEvent.forgotPasswordSuccessful() =
      _ForgotPasswordSuccessful;
  const factory AuthEvent.forgotPasswordFailed([String? message]) =
      _ForgotPasswordFailed;

  // --- General ---
  const factory AuthEvent.errorMessageCleared() = _ErrorMessageCleared;
  const factory AuthEvent.logoutPressed() = _LogoutPressed;
}
