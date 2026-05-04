part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    // --- Form Fields ---
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(FullNameFormz.pure()) FullNameFormz fullName,
    @Default(PhoneFormz.pure()) PhoneFormz phone,
    @Default(ForgotPasswordFormz.pure())
    ForgotPasswordFormz forgotPasswordEmail,

    // --- Submission Statuses ---
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus loginStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus registerStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus forgotPasswordStatus,

    // --- User Data ---
    User? user,
    String? userEmail,

    // --- Error Handling ---
    String? errorMessage,
  }) = _AuthState;

  // Form Validity Getters
  bool get isLoginFormValid => email.isValid && password.isValid;
  bool get isRegisterFormValid =>
      email.isValid && password.isValid && fullName.isValid && phone.isValid;
  bool get isForgotPasswordFormValid => forgotPasswordEmail.isValid;
}

// ============================================================
// FORMZ VALIDATORS
// ============================================================

class EmailFormz extends FormzInput<String, ValidationError> {
  const EmailFormz.pure([super.value = '']) : super.pure();
  const EmailFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;
    if (!EmailValidator.validate(value.trim())) return ValidationError.invalid;
    return null;
  }
}

class PasswordFormz extends FormzInput<String, ValidationError> {
  const PasswordFormz.pure([super.value = '']) : super.pure();
  const PasswordFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;
    if (value.length < 6) return ValidationError.short;
    return null;
  }
}

class FullNameFormz extends FormzInput<String, ValidationError> {
  const FullNameFormz.pure([super.value = '']) : super.pure();
  const FullNameFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;
    if (value.trim().length < 3) return ValidationError.short;
    return null;
  }
}

class PhoneFormz extends FormzInput<String, ValidationError> {
  const PhoneFormz.pure([super.value = '']) : super.pure();
  const PhoneFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;
    if (!RegExp(r'^\+?[0-9]{10,}$').hasMatch(value)) {
      return ValidationError.invalid;
    }
    return null;
  }
}

class ForgotPasswordFormz extends FormzInput<String, ValidationError> {
  const ForgotPasswordFormz.pure([super.value = '']) : super.pure();
  const ForgotPasswordFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;
    if (!EmailValidator.validate(value.trim())) return ValidationError.invalid;
    return null;
  }
}
