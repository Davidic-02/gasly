import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gasly/enums/validator_error.dart';
import 'package:gasly/models/customer_model.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final FirebaseFirestore _firestore;

  CustomerBloc(this._firestore) : super(const CustomerState()) {
    // Form field changes
    on<_FullNameChanged>(_onFullNameChanged);
    on<_EmailChanged>(_onEmailChanged);
    on<_PhoneChanged>(_onPhoneChanged);
    on<_AddressChanged>(_onAddressChanged);

    // Add customer
    on<_AddCustomerPressed>(_onAddCustomerPressed);
    on<_AddCustomerSuccessful>(_onAddCustomerSuccessful);
    on<_AddCustomerFailed>(_onAddCustomerFailed);

    // Fetch & Filter
    on<_FetchCustomers>(_onFetchCustomers);
    on<_FilterByStatus>(_onFilterByStatus);

    // Management
    on<_LockCustomer>(_onLockCustomer);
    on<_UnlockCustomer>(_onUnlockCustomer);
    on<_DeleteCustomer>(_onDeleteCustomer);
  }

  // ============================================================
  // FORM FIELD HANDLERS
  // ============================================================

  void _onFullNameChanged(_FullNameChanged event, Emitter<CustomerState> emit) {
    final fullName = FullNameFormz.dirty(event.fullName);
    emit(
      state.copyWith(
        fullName: fullName.isValid
            ? fullName
            : FullNameFormz.pure(event.fullName),
      ),
    );
  }

  void _onEmailChanged(_EmailChanged event, Emitter<CustomerState> emit) {
    final email = EmailFormz.dirty(event.email);
    emit(
      state.copyWith(
        email: email.isValid ? email : EmailFormz.pure(event.email),
      ),
    );
  }

  void _onPhoneChanged(_PhoneChanged event, Emitter<CustomerState> emit) {
    final phone = PhoneFormz.dirty(event.phone);
    emit(
      state.copyWith(
        phone: phone.isValid ? phone : PhoneFormz.pure(event.phone),
      ),
    );
  }

  void _onAddressChanged(_AddressChanged event, Emitter<CustomerState> emit) {
    emit(state.copyWith(address: AddressFormz.dirty(event.address)));
  }

  // ============================================================
  // ADD CUSTOMER
  // ============================================================

  void _onAddCustomerPressed(
    _AddCustomerPressed event,
    Emitter<CustomerState> emit,
  ) async {
    if (state.addCustomerStatus == FormzSubmissionStatus.inProgress) return;

    if (!state.isAddCustomerFormValid) {
      emit(
        state.copyWith(
          fullName: FullNameFormz.dirty(state.fullName.value),
          phone: PhoneFormz.dirty(state.phone.value),
          errorMessage: 'Name and phone number are required.',
        ),
      );
      return;
    }

    emit(state.copyWith(addCustomerStatus: FormzSubmissionStatus.inProgress));

    try {
      await _firestore.collection('customers').add({
        'fullName': state.fullName.value,
        'email': state.email.value,
        'phone': state.phone.value,
        'address': state.address.value,
        'status': 'active', // Default — owner can lock later
        'loyaltyPoints': 0, // Starts at zero
        'totalSpent': 0.0,
        'createdAt': FieldValue.serverTimestamp(),
      });

      add(const CustomerEvent.addCustomerSuccessful());
    } catch (e) {
      add(CustomerEvent.addCustomerFailed(e.toString()));
    }
  }

  void _onAddCustomerSuccessful(
    _AddCustomerSuccessful event,
    Emitter<CustomerState> emit,
  ) {
    emit(
      state.copyWith(
        addCustomerStatus: FormzSubmissionStatus.success,
        // Reset form fields after successful save
        fullName: const FullNameFormz.pure(),
        email: const EmailFormz.pure(),
        phone: const PhoneFormz.pure(),
        address: const AddressFormz.pure(),
        errorMessage: null,
      ),
    );
    // Refresh the customer list
    add(const CustomerEvent.fetchCustomers());
  }

  void _onAddCustomerFailed(
    _AddCustomerFailed event,
    Emitter<CustomerState> emit,
  ) {
    emit(
      state.copyWith(
        addCustomerStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'Failed to add customer.',
      ),
    );
  }

  // ============================================================
  // FETCH & FILTER (Populates your customer table)
  // ============================================================

  void _onFetchCustomers(
    _FetchCustomers event,
    Emitter<CustomerState> emit,
  ) async {
    emit(state.copyWith(fetchStatus: FormzSubmissionStatus.inProgress));

    try {
      final snapshot = await _firestore
          .collection('customers')
          .orderBy('createdAt', descending: true)
          .get();

      final customers = snapshot.docs
          .map((doc) => CustomerModel.fromFirestore(doc))
          .toList();

      emit(
        state.copyWith(
          fetchStatus: FormzSubmissionStatus.success,
          customers: customers,
          filteredCustomers: customers, // Show all by default
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          fetchStatus: FormzSubmissionStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _onFilterByStatus(_FilterByStatus event, Emitter<CustomerState> emit) {
    final filtered = event.status == 'All'
        ? state.customers
        : state.customers
              .where(
                (c) => c.status.toLowerCase() == event.status.toLowerCase(),
              )
              .toList();

    emit(
      state.copyWith(filteredCustomers: filtered, activeFilter: event.status),
    );
  }

  // ============================================================
  // LOCK / UNLOCK / DELETE
  // ============================================================

  void _onLockCustomer(_LockCustomer event, Emitter<CustomerState> emit) async {
    try {
      await _firestore.collection('customers').doc(event.customerId).update({
        'status': 'inactive',
      });

      add(const CustomerEvent.fetchCustomers()); // Refresh table
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void _onUnlockCustomer(
    _UnlockCustomer event,
    Emitter<CustomerState> emit,
  ) async {
    try {
      await _firestore.collection('customers').doc(event.customerId).update({
        'status': 'active',
      });

      add(const CustomerEvent.fetchCustomers());
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void _onDeleteCustomer(
    _DeleteCustomer event,
    Emitter<CustomerState> emit,
  ) async {
    try {
      await _firestore.collection('customers').doc(event.customerId).delete();

      add(const CustomerEvent.fetchCustomers());
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
