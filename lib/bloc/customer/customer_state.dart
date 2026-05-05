part of 'customer_bloc.dart';

@freezed
abstract class CustomerState with _$CustomerState {
  const CustomerState._();

  const factory CustomerState({
    // Form fields for Add Customer
    @Default(FullNameFormz.pure()) FullNameFormz fullName,
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PhoneFormz.pure()) PhoneFormz phone,
    @Default(AddressFormz.pure()) AddressFormz address,

    // Submission status
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus addCustomerStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus fetchStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus lockStatus,

    // Customer list (what populates your table)
    @Default([]) List<CustomerModel> customers,
    @Default([]) List<CustomerModel> filteredCustomers,

    // Current filter
    @Default('All') String activeFilter,

    // Error
    String? errorMessage,
  }) = _CustomerState;

  // Form validity
  bool get isAddCustomerFormValid => fullName.isValid && phone.isValid;
  // email and address are optional — owner might not always have them
}

// ============================================================
// FORMZ VALIDATORS (Customer specific)
// ============================================================

class AddressFormz extends FormzInput<String, ValidationError> {
  const AddressFormz.pure([super.value = '']) : super.pure();
  const AddressFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    // Address is optional for the owner
    return null;
  }
}

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
