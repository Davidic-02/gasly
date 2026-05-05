// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerEvent()';
}


}

/// @nodoc
class $CustomerEventCopyWith<$Res>  {
$CustomerEventCopyWith(CustomerEvent _, $Res Function(CustomerEvent) __);
}


/// Adds pattern-matching-related methods to [CustomerEvent].
extension CustomerEventPatterns on CustomerEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerEvent value)?  $default,{TResult Function( _FullNameChanged value)?  fullNameChanged,TResult Function( _EmailChanged value)?  emailChanged,TResult Function( _PhoneChanged value)?  phoneChanged,TResult Function( _AddressChanged value)?  addressChanged,TResult Function( _AddCustomerPressed value)?  addCustomerPressed,TResult Function( _AddCustomerSuccessful value)?  addCustomerSuccessful,TResult Function( _AddCustomerFailed value)?  addCustomerFailed,TResult Function( _FetchCustomers value)?  fetchCustomers,TResult Function( _FilterByStatus value)?  filterByStatus,TResult Function( _LockCustomer value)?  lockCustomer,TResult Function( _UnlockCustomer value)?  unlockCustomer,TResult Function( _DeleteCustomer value)?  deleteCustomer,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerEvent() when $default != null:
return $default(_that);case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that);case _EmailChanged() when emailChanged != null:
return emailChanged(_that);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case _AddressChanged() when addressChanged != null:
return addressChanged(_that);case _AddCustomerPressed() when addCustomerPressed != null:
return addCustomerPressed(_that);case _AddCustomerSuccessful() when addCustomerSuccessful != null:
return addCustomerSuccessful(_that);case _AddCustomerFailed() when addCustomerFailed != null:
return addCustomerFailed(_that);case _FetchCustomers() when fetchCustomers != null:
return fetchCustomers(_that);case _FilterByStatus() when filterByStatus != null:
return filterByStatus(_that);case _LockCustomer() when lockCustomer != null:
return lockCustomer(_that);case _UnlockCustomer() when unlockCustomer != null:
return unlockCustomer(_that);case _DeleteCustomer() when deleteCustomer != null:
return deleteCustomer(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerEvent value)  $default,{required TResult Function( _FullNameChanged value)  fullNameChanged,required TResult Function( _EmailChanged value)  emailChanged,required TResult Function( _PhoneChanged value)  phoneChanged,required TResult Function( _AddressChanged value)  addressChanged,required TResult Function( _AddCustomerPressed value)  addCustomerPressed,required TResult Function( _AddCustomerSuccessful value)  addCustomerSuccessful,required TResult Function( _AddCustomerFailed value)  addCustomerFailed,required TResult Function( _FetchCustomers value)  fetchCustomers,required TResult Function( _FilterByStatus value)  filterByStatus,required TResult Function( _LockCustomer value)  lockCustomer,required TResult Function( _UnlockCustomer value)  unlockCustomer,required TResult Function( _DeleteCustomer value)  deleteCustomer,}){
final _that = this;
switch (_that) {
case _CustomerEvent():
return $default(_that);case _FullNameChanged():
return fullNameChanged(_that);case _EmailChanged():
return emailChanged(_that);case _PhoneChanged():
return phoneChanged(_that);case _AddressChanged():
return addressChanged(_that);case _AddCustomerPressed():
return addCustomerPressed(_that);case _AddCustomerSuccessful():
return addCustomerSuccessful(_that);case _AddCustomerFailed():
return addCustomerFailed(_that);case _FetchCustomers():
return fetchCustomers(_that);case _FilterByStatus():
return filterByStatus(_that);case _LockCustomer():
return lockCustomer(_that);case _UnlockCustomer():
return unlockCustomer(_that);case _DeleteCustomer():
return deleteCustomer(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerEvent value)?  $default,{TResult? Function( _FullNameChanged value)?  fullNameChanged,TResult? Function( _EmailChanged value)?  emailChanged,TResult? Function( _PhoneChanged value)?  phoneChanged,TResult? Function( _AddressChanged value)?  addressChanged,TResult? Function( _AddCustomerPressed value)?  addCustomerPressed,TResult? Function( _AddCustomerSuccessful value)?  addCustomerSuccessful,TResult? Function( _AddCustomerFailed value)?  addCustomerFailed,TResult? Function( _FetchCustomers value)?  fetchCustomers,TResult? Function( _FilterByStatus value)?  filterByStatus,TResult? Function( _LockCustomer value)?  lockCustomer,TResult? Function( _UnlockCustomer value)?  unlockCustomer,TResult? Function( _DeleteCustomer value)?  deleteCustomer,}){
final _that = this;
switch (_that) {
case _CustomerEvent() when $default != null:
return $default(_that);case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that);case _EmailChanged() when emailChanged != null:
return emailChanged(_that);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case _AddressChanged() when addressChanged != null:
return addressChanged(_that);case _AddCustomerPressed() when addCustomerPressed != null:
return addCustomerPressed(_that);case _AddCustomerSuccessful() when addCustomerSuccessful != null:
return addCustomerSuccessful(_that);case _AddCustomerFailed() when addCustomerFailed != null:
return addCustomerFailed(_that);case _FetchCustomers() when fetchCustomers != null:
return fetchCustomers(_that);case _FilterByStatus() when filterByStatus != null:
return filterByStatus(_that);case _LockCustomer() when lockCustomer != null:
return lockCustomer(_that);case _UnlockCustomer() when unlockCustomer != null:
return unlockCustomer(_that);case _DeleteCustomer() when deleteCustomer != null:
return deleteCustomer(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{TResult Function( String fullName)?  fullNameChanged,TResult Function( String email)?  emailChanged,TResult Function( String phone)?  phoneChanged,TResult Function( String address)?  addressChanged,TResult Function()?  addCustomerPressed,TResult Function()?  addCustomerSuccessful,TResult Function( String? message)?  addCustomerFailed,TResult Function()?  fetchCustomers,TResult Function( String status)?  filterByStatus,TResult Function( String customerId)?  lockCustomer,TResult Function( String customerId)?  unlockCustomer,TResult Function( String customerId)?  deleteCustomer,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerEvent() when $default != null:
return $default();case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that.fullName);case _EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case _AddressChanged() when addressChanged != null:
return addressChanged(_that.address);case _AddCustomerPressed() when addCustomerPressed != null:
return addCustomerPressed();case _AddCustomerSuccessful() when addCustomerSuccessful != null:
return addCustomerSuccessful();case _AddCustomerFailed() when addCustomerFailed != null:
return addCustomerFailed(_that.message);case _FetchCustomers() when fetchCustomers != null:
return fetchCustomers();case _FilterByStatus() when filterByStatus != null:
return filterByStatus(_that.status);case _LockCustomer() when lockCustomer != null:
return lockCustomer(_that.customerId);case _UnlockCustomer() when unlockCustomer != null:
return unlockCustomer(_that.customerId);case _DeleteCustomer() when deleteCustomer != null:
return deleteCustomer(_that.customerId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,{required TResult Function( String fullName)  fullNameChanged,required TResult Function( String email)  emailChanged,required TResult Function( String phone)  phoneChanged,required TResult Function( String address)  addressChanged,required TResult Function()  addCustomerPressed,required TResult Function()  addCustomerSuccessful,required TResult Function( String? message)  addCustomerFailed,required TResult Function()  fetchCustomers,required TResult Function( String status)  filterByStatus,required TResult Function( String customerId)  lockCustomer,required TResult Function( String customerId)  unlockCustomer,required TResult Function( String customerId)  deleteCustomer,}) {final _that = this;
switch (_that) {
case _CustomerEvent():
return $default();case _FullNameChanged():
return fullNameChanged(_that.fullName);case _EmailChanged():
return emailChanged(_that.email);case _PhoneChanged():
return phoneChanged(_that.phone);case _AddressChanged():
return addressChanged(_that.address);case _AddCustomerPressed():
return addCustomerPressed();case _AddCustomerSuccessful():
return addCustomerSuccessful();case _AddCustomerFailed():
return addCustomerFailed(_that.message);case _FetchCustomers():
return fetchCustomers();case _FilterByStatus():
return filterByStatus(_that.status);case _LockCustomer():
return lockCustomer(_that.customerId);case _UnlockCustomer():
return unlockCustomer(_that.customerId);case _DeleteCustomer():
return deleteCustomer(_that.customerId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,{TResult? Function( String fullName)?  fullNameChanged,TResult? Function( String email)?  emailChanged,TResult? Function( String phone)?  phoneChanged,TResult? Function( String address)?  addressChanged,TResult? Function()?  addCustomerPressed,TResult? Function()?  addCustomerSuccessful,TResult? Function( String? message)?  addCustomerFailed,TResult? Function()?  fetchCustomers,TResult? Function( String status)?  filterByStatus,TResult? Function( String customerId)?  lockCustomer,TResult? Function( String customerId)?  unlockCustomer,TResult? Function( String customerId)?  deleteCustomer,}) {final _that = this;
switch (_that) {
case _CustomerEvent() when $default != null:
return $default();case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that.fullName);case _EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case _AddressChanged() when addressChanged != null:
return addressChanged(_that.address);case _AddCustomerPressed() when addCustomerPressed != null:
return addCustomerPressed();case _AddCustomerSuccessful() when addCustomerSuccessful != null:
return addCustomerSuccessful();case _AddCustomerFailed() when addCustomerFailed != null:
return addCustomerFailed(_that.message);case _FetchCustomers() when fetchCustomers != null:
return fetchCustomers();case _FilterByStatus() when filterByStatus != null:
return filterByStatus(_that.status);case _LockCustomer() when lockCustomer != null:
return lockCustomer(_that.customerId);case _UnlockCustomer() when unlockCustomer != null:
return unlockCustomer(_that.customerId);case _DeleteCustomer() when deleteCustomer != null:
return deleteCustomer(_that.customerId);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerEvent implements CustomerEvent {
  const _CustomerEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerEvent()';
}


}




/// @nodoc


class _FullNameChanged implements CustomerEvent {
  const _FullNameChanged(this.fullName);
  

 final  String fullName;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FullNameChangedCopyWith<_FullNameChanged> get copyWith => __$FullNameChangedCopyWithImpl<_FullNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FullNameChanged&&(identical(other.fullName, fullName) || other.fullName == fullName));
}


@override
int get hashCode => Object.hash(runtimeType,fullName);

@override
String toString() {
  return 'CustomerEvent.fullNameChanged(fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$FullNameChangedCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$FullNameChangedCopyWith(_FullNameChanged value, $Res Function(_FullNameChanged) _then) = __$FullNameChangedCopyWithImpl;
@useResult
$Res call({
 String fullName
});




}
/// @nodoc
class __$FullNameChangedCopyWithImpl<$Res>
    implements _$FullNameChangedCopyWith<$Res> {
  __$FullNameChangedCopyWithImpl(this._self, this._then);

  final _FullNameChanged _self;
  final $Res Function(_FullNameChanged) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullName = null,}) {
  return _then(_FullNameChanged(
null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmailChanged implements CustomerEvent {
  const _EmailChanged(this.email);
  

 final  String email;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailChangedCopyWith<_EmailChanged> get copyWith => __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'CustomerEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$EmailChangedCopyWith(_EmailChanged value, $Res Function(_EmailChanged) _then) = __$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(this._self, this._then);

  final _EmailChanged _self;
  final $Res Function(_EmailChanged) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PhoneChanged implements CustomerEvent {
  const _PhoneChanged(this.phone);
  

 final  String phone;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneChangedCopyWith<_PhoneChanged> get copyWith => __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneChanged&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'CustomerEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PhoneChangedCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(_PhoneChanged value, $Res Function(_PhoneChanged) _then) = __$PhoneChangedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(this._self, this._then);

  final _PhoneChanged _self;
  final $Res Function(_PhoneChanged) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_PhoneChanged(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddressChanged implements CustomerEvent {
  const _AddressChanged(this.address);
  

 final  String address;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressChangedCopyWith<_AddressChanged> get copyWith => __$AddressChangedCopyWithImpl<_AddressChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressChanged&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CustomerEvent.addressChanged(address: $address)';
}


}

/// @nodoc
abstract mixin class _$AddressChangedCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$AddressChangedCopyWith(_AddressChanged value, $Res Function(_AddressChanged) _then) = __$AddressChangedCopyWithImpl;
@useResult
$Res call({
 String address
});




}
/// @nodoc
class __$AddressChangedCopyWithImpl<$Res>
    implements _$AddressChangedCopyWith<$Res> {
  __$AddressChangedCopyWithImpl(this._self, this._then);

  final _AddressChanged _self;
  final $Res Function(_AddressChanged) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_AddressChanged(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddCustomerPressed implements CustomerEvent {
  const _AddCustomerPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCustomerPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerEvent.addCustomerPressed()';
}


}




/// @nodoc


class _AddCustomerSuccessful implements CustomerEvent {
  const _AddCustomerSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCustomerSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerEvent.addCustomerSuccessful()';
}


}




/// @nodoc


class _AddCustomerFailed implements CustomerEvent {
  const _AddCustomerFailed([this.message]);
  

 final  String? message;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCustomerFailedCopyWith<_AddCustomerFailed> get copyWith => __$AddCustomerFailedCopyWithImpl<_AddCustomerFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCustomerFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CustomerEvent.addCustomerFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AddCustomerFailedCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$AddCustomerFailedCopyWith(_AddCustomerFailed value, $Res Function(_AddCustomerFailed) _then) = __$AddCustomerFailedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$AddCustomerFailedCopyWithImpl<$Res>
    implements _$AddCustomerFailedCopyWith<$Res> {
  __$AddCustomerFailedCopyWithImpl(this._self, this._then);

  final _AddCustomerFailed _self;
  final $Res Function(_AddCustomerFailed) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_AddCustomerFailed(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _FetchCustomers implements CustomerEvent {
  const _FetchCustomers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchCustomers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerEvent.fetchCustomers()';
}


}




/// @nodoc


class _FilterByStatus implements CustomerEvent {
  const _FilterByStatus(this.status);
  

 final  String status;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterByStatusCopyWith<_FilterByStatus> get copyWith => __$FilterByStatusCopyWithImpl<_FilterByStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterByStatus&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'CustomerEvent.filterByStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$FilterByStatusCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$FilterByStatusCopyWith(_FilterByStatus value, $Res Function(_FilterByStatus) _then) = __$FilterByStatusCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class __$FilterByStatusCopyWithImpl<$Res>
    implements _$FilterByStatusCopyWith<$Res> {
  __$FilterByStatusCopyWithImpl(this._self, this._then);

  final _FilterByStatus _self;
  final $Res Function(_FilterByStatus) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_FilterByStatus(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LockCustomer implements CustomerEvent {
  const _LockCustomer(this.customerId);
  

 final  String customerId;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LockCustomerCopyWith<_LockCustomer> get copyWith => __$LockCustomerCopyWithImpl<_LockCustomer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LockCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId));
}


@override
int get hashCode => Object.hash(runtimeType,customerId);

@override
String toString() {
  return 'CustomerEvent.lockCustomer(customerId: $customerId)';
}


}

/// @nodoc
abstract mixin class _$LockCustomerCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$LockCustomerCopyWith(_LockCustomer value, $Res Function(_LockCustomer) _then) = __$LockCustomerCopyWithImpl;
@useResult
$Res call({
 String customerId
});




}
/// @nodoc
class __$LockCustomerCopyWithImpl<$Res>
    implements _$LockCustomerCopyWith<$Res> {
  __$LockCustomerCopyWithImpl(this._self, this._then);

  final _LockCustomer _self;
  final $Res Function(_LockCustomer) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customerId = null,}) {
  return _then(_LockCustomer(
null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UnlockCustomer implements CustomerEvent {
  const _UnlockCustomer(this.customerId);
  

 final  String customerId;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnlockCustomerCopyWith<_UnlockCustomer> get copyWith => __$UnlockCustomerCopyWithImpl<_UnlockCustomer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnlockCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId));
}


@override
int get hashCode => Object.hash(runtimeType,customerId);

@override
String toString() {
  return 'CustomerEvent.unlockCustomer(customerId: $customerId)';
}


}

/// @nodoc
abstract mixin class _$UnlockCustomerCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$UnlockCustomerCopyWith(_UnlockCustomer value, $Res Function(_UnlockCustomer) _then) = __$UnlockCustomerCopyWithImpl;
@useResult
$Res call({
 String customerId
});




}
/// @nodoc
class __$UnlockCustomerCopyWithImpl<$Res>
    implements _$UnlockCustomerCopyWith<$Res> {
  __$UnlockCustomerCopyWithImpl(this._self, this._then);

  final _UnlockCustomer _self;
  final $Res Function(_UnlockCustomer) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customerId = null,}) {
  return _then(_UnlockCustomer(
null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteCustomer implements CustomerEvent {
  const _DeleteCustomer(this.customerId);
  

 final  String customerId;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCustomerCopyWith<_DeleteCustomer> get copyWith => __$DeleteCustomerCopyWithImpl<_DeleteCustomer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId));
}


@override
int get hashCode => Object.hash(runtimeType,customerId);

@override
String toString() {
  return 'CustomerEvent.deleteCustomer(customerId: $customerId)';
}


}

/// @nodoc
abstract mixin class _$DeleteCustomerCopyWith<$Res> implements $CustomerEventCopyWith<$Res> {
  factory _$DeleteCustomerCopyWith(_DeleteCustomer value, $Res Function(_DeleteCustomer) _then) = __$DeleteCustomerCopyWithImpl;
@useResult
$Res call({
 String customerId
});




}
/// @nodoc
class __$DeleteCustomerCopyWithImpl<$Res>
    implements _$DeleteCustomerCopyWith<$Res> {
  __$DeleteCustomerCopyWithImpl(this._self, this._then);

  final _DeleteCustomer _self;
  final $Res Function(_DeleteCustomer) _then;

/// Create a copy of CustomerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customerId = null,}) {
  return _then(_DeleteCustomer(
null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CustomerState {

// Form fields for Add Customer
 FullNameFormz get fullName; EmailFormz get email; PhoneFormz get phone; AddressFormz get address;// Submission status
 FormzSubmissionStatus get addCustomerStatus; FormzSubmissionStatus get fetchStatus; FormzSubmissionStatus get lockStatus;// Customer list (what populates your table)
 List<CustomerModel> get customers; List<CustomerModel> get filteredCustomers;// Current filter
 String get activeFilter;// Error
 String? get errorMessage;
/// Create a copy of CustomerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerStateCopyWith<CustomerState> get copyWith => _$CustomerStateCopyWithImpl<CustomerState>(this as CustomerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerState&&const DeepCollectionEquality().equals(other.fullName, fullName)&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.addCustomerStatus, addCustomerStatus) || other.addCustomerStatus == addCustomerStatus)&&(identical(other.fetchStatus, fetchStatus) || other.fetchStatus == fetchStatus)&&(identical(other.lockStatus, lockStatus) || other.lockStatus == lockStatus)&&const DeepCollectionEquality().equals(other.customers, customers)&&const DeepCollectionEquality().equals(other.filteredCustomers, filteredCustomers)&&(identical(other.activeFilter, activeFilter) || other.activeFilter == activeFilter)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fullName),const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(phone),address,addCustomerStatus,fetchStatus,lockStatus,const DeepCollectionEquality().hash(customers),const DeepCollectionEquality().hash(filteredCustomers),activeFilter,errorMessage);

@override
String toString() {
  return 'CustomerState(fullName: $fullName, email: $email, phone: $phone, address: $address, addCustomerStatus: $addCustomerStatus, fetchStatus: $fetchStatus, lockStatus: $lockStatus, customers: $customers, filteredCustomers: $filteredCustomers, activeFilter: $activeFilter, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CustomerStateCopyWith<$Res>  {
  factory $CustomerStateCopyWith(CustomerState value, $Res Function(CustomerState) _then) = _$CustomerStateCopyWithImpl;
@useResult
$Res call({
 FullNameFormz fullName, EmailFormz email, PhoneFormz phone, AddressFormz address, FormzSubmissionStatus addCustomerStatus, FormzSubmissionStatus fetchStatus, FormzSubmissionStatus lockStatus, List<CustomerModel> customers, List<CustomerModel> filteredCustomers, String activeFilter, String? errorMessage
});




}
/// @nodoc
class _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._self, this._then);

  final CustomerState _self;
  final $Res Function(CustomerState) _then;

/// Create a copy of CustomerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? email = freezed,Object? phone = freezed,Object? address = null,Object? addCustomerStatus = null,Object? fetchStatus = null,Object? lockStatus = null,Object? customers = null,Object? filteredCustomers = null,Object? activeFilter = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullNameFormz,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormz,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneFormz,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressFormz,addCustomerStatus: null == addCustomerStatus ? _self.addCustomerStatus : addCustomerStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,fetchStatus: null == fetchStatus ? _self.fetchStatus : fetchStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,lockStatus: null == lockStatus ? _self.lockStatus : lockStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as List<CustomerModel>,filteredCustomers: null == filteredCustomers ? _self.filteredCustomers : filteredCustomers // ignore: cast_nullable_to_non_nullable
as List<CustomerModel>,activeFilter: null == activeFilter ? _self.activeFilter : activeFilter // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerState].
extension CustomerStatePatterns on CustomerState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerState value)  $default,){
final _that = this;
switch (_that) {
case _CustomerState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerState value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FullNameFormz fullName,  EmailFormz email,  PhoneFormz phone,  AddressFormz address,  FormzSubmissionStatus addCustomerStatus,  FormzSubmissionStatus fetchStatus,  FormzSubmissionStatus lockStatus,  List<CustomerModel> customers,  List<CustomerModel> filteredCustomers,  String activeFilter,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerState() when $default != null:
return $default(_that.fullName,_that.email,_that.phone,_that.address,_that.addCustomerStatus,_that.fetchStatus,_that.lockStatus,_that.customers,_that.filteredCustomers,_that.activeFilter,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FullNameFormz fullName,  EmailFormz email,  PhoneFormz phone,  AddressFormz address,  FormzSubmissionStatus addCustomerStatus,  FormzSubmissionStatus fetchStatus,  FormzSubmissionStatus lockStatus,  List<CustomerModel> customers,  List<CustomerModel> filteredCustomers,  String activeFilter,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CustomerState():
return $default(_that.fullName,_that.email,_that.phone,_that.address,_that.addCustomerStatus,_that.fetchStatus,_that.lockStatus,_that.customers,_that.filteredCustomers,_that.activeFilter,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FullNameFormz fullName,  EmailFormz email,  PhoneFormz phone,  AddressFormz address,  FormzSubmissionStatus addCustomerStatus,  FormzSubmissionStatus fetchStatus,  FormzSubmissionStatus lockStatus,  List<CustomerModel> customers,  List<CustomerModel> filteredCustomers,  String activeFilter,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CustomerState() when $default != null:
return $default(_that.fullName,_that.email,_that.phone,_that.address,_that.addCustomerStatus,_that.fetchStatus,_that.lockStatus,_that.customers,_that.filteredCustomers,_that.activeFilter,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerState extends CustomerState {
  const _CustomerState({this.fullName = const FullNameFormz.pure(), this.email = const EmailFormz.pure(), this.phone = const PhoneFormz.pure(), this.address = const AddressFormz.pure(), this.addCustomerStatus = FormzSubmissionStatus.initial, this.fetchStatus = FormzSubmissionStatus.initial, this.lockStatus = FormzSubmissionStatus.initial, final  List<CustomerModel> customers = const [], final  List<CustomerModel> filteredCustomers = const [], this.activeFilter = 'All', this.errorMessage}): _customers = customers,_filteredCustomers = filteredCustomers,super._();
  

// Form fields for Add Customer
@override@JsonKey() final  FullNameFormz fullName;
@override@JsonKey() final  EmailFormz email;
@override@JsonKey() final  PhoneFormz phone;
@override@JsonKey() final  AddressFormz address;
// Submission status
@override@JsonKey() final  FormzSubmissionStatus addCustomerStatus;
@override@JsonKey() final  FormzSubmissionStatus fetchStatus;
@override@JsonKey() final  FormzSubmissionStatus lockStatus;
// Customer list (what populates your table)
 final  List<CustomerModel> _customers;
// Customer list (what populates your table)
@override@JsonKey() List<CustomerModel> get customers {
  if (_customers is EqualUnmodifiableListView) return _customers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customers);
}

 final  List<CustomerModel> _filteredCustomers;
@override@JsonKey() List<CustomerModel> get filteredCustomers {
  if (_filteredCustomers is EqualUnmodifiableListView) return _filteredCustomers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredCustomers);
}

// Current filter
@override@JsonKey() final  String activeFilter;
// Error
@override final  String? errorMessage;

/// Create a copy of CustomerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerStateCopyWith<_CustomerState> get copyWith => __$CustomerStateCopyWithImpl<_CustomerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerState&&const DeepCollectionEquality().equals(other.fullName, fullName)&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.addCustomerStatus, addCustomerStatus) || other.addCustomerStatus == addCustomerStatus)&&(identical(other.fetchStatus, fetchStatus) || other.fetchStatus == fetchStatus)&&(identical(other.lockStatus, lockStatus) || other.lockStatus == lockStatus)&&const DeepCollectionEquality().equals(other._customers, _customers)&&const DeepCollectionEquality().equals(other._filteredCustomers, _filteredCustomers)&&(identical(other.activeFilter, activeFilter) || other.activeFilter == activeFilter)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fullName),const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(phone),address,addCustomerStatus,fetchStatus,lockStatus,const DeepCollectionEquality().hash(_customers),const DeepCollectionEquality().hash(_filteredCustomers),activeFilter,errorMessage);

@override
String toString() {
  return 'CustomerState(fullName: $fullName, email: $email, phone: $phone, address: $address, addCustomerStatus: $addCustomerStatus, fetchStatus: $fetchStatus, lockStatus: $lockStatus, customers: $customers, filteredCustomers: $filteredCustomers, activeFilter: $activeFilter, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CustomerStateCopyWith<$Res> implements $CustomerStateCopyWith<$Res> {
  factory _$CustomerStateCopyWith(_CustomerState value, $Res Function(_CustomerState) _then) = __$CustomerStateCopyWithImpl;
@override @useResult
$Res call({
 FullNameFormz fullName, EmailFormz email, PhoneFormz phone, AddressFormz address, FormzSubmissionStatus addCustomerStatus, FormzSubmissionStatus fetchStatus, FormzSubmissionStatus lockStatus, List<CustomerModel> customers, List<CustomerModel> filteredCustomers, String activeFilter, String? errorMessage
});




}
/// @nodoc
class __$CustomerStateCopyWithImpl<$Res>
    implements _$CustomerStateCopyWith<$Res> {
  __$CustomerStateCopyWithImpl(this._self, this._then);

  final _CustomerState _self;
  final $Res Function(_CustomerState) _then;

/// Create a copy of CustomerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? email = freezed,Object? phone = freezed,Object? address = null,Object? addCustomerStatus = null,Object? fetchStatus = null,Object? lockStatus = null,Object? customers = null,Object? filteredCustomers = null,Object? activeFilter = null,Object? errorMessage = freezed,}) {
  return _then(_CustomerState(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullNameFormz,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormz,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneFormz,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressFormz,addCustomerStatus: null == addCustomerStatus ? _self.addCustomerStatus : addCustomerStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,fetchStatus: null == fetchStatus ? _self.fetchStatus : fetchStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,lockStatus: null == lockStatus ? _self.lockStatus : lockStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,customers: null == customers ? _self._customers : customers // ignore: cast_nullable_to_non_nullable
as List<CustomerModel>,filteredCustomers: null == filteredCustomers ? _self._filteredCustomers : filteredCustomers // ignore: cast_nullable_to_non_nullable
as List<CustomerModel>,activeFilter: null == activeFilter ? _self.activeFilter : activeFilter // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
