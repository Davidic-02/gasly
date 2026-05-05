part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent() = _CustomerEvent;

  // Field change events (for the Add Customer form)
  const factory CustomerEvent.fullNameChanged(String fullName) =
      _FullNameChanged;
  const factory CustomerEvent.emailChanged(String email) = _EmailChanged;
  const factory CustomerEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory CustomerEvent.addressChanged(String address) = _AddressChanged;

  // Actions
  const factory CustomerEvent.addCustomerPressed() = _AddCustomerPressed;
  const factory CustomerEvent.addCustomerSuccessful() = _AddCustomerSuccessful;
  const factory CustomerEvent.addCustomerFailed([String? message]) =
      _AddCustomerFailed;

  // Fetching
  const factory CustomerEvent.fetchCustomers() = _FetchCustomers;
  const factory CustomerEvent.filterByStatus(String status) = _FilterByStatus;

  // Management
  const factory CustomerEvent.lockCustomer(String customerId) = _LockCustomer;
  const factory CustomerEvent.unlockCustomer(String customerId) =
      _UnlockCustomer;
  const factory CustomerEvent.deleteCustomer(String customerId) =
      _DeleteCustomer;
}
