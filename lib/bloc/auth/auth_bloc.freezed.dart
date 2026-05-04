// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthEvent value)?  $default,{TResult Function( _EmailChanged value)?  emailChanged,TResult Function( _PasswordChanged value)?  passwordChanged,TResult Function( _LoginPressed value)?  loginPressed,TResult Function( _LoginSuccessful value)?  loginSuccessful,TResult Function( _LoginFailed value)?  loginFailed,TResult Function( _FullNameChanged value)?  fullNameChanged,TResult Function( _PhoneChanged value)?  phoneChanged,TResult Function( _RegisterPressed value)?  registerPressed,TResult Function( _RegisterSuccessful value)?  registerSuccessful,TResult Function( _RegisterFailed value)?  registerFailed,TResult Function( _ForgotPasswordEmailChanged value)?  forgotPasswordEmailChanged,TResult Function( _ForgotPasswordPressed value)?  forgotPasswordPressed,TResult Function( _ForgotPasswordSuccessful value)?  forgotPasswordSuccessful,TResult Function( _ForgotPasswordFailed value)?  forgotPasswordFailed,TResult Function( _ErrorMessageCleared value)?  errorMessageCleared,TResult Function( _LogoutPressed value)?  logoutPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthEvent() when $default != null:
return $default(_that);case _EmailChanged() when emailChanged != null:
return emailChanged(_that);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case _LoginPressed() when loginPressed != null:
return loginPressed(_that);case _LoginSuccessful() when loginSuccessful != null:
return loginSuccessful(_that);case _LoginFailed() when loginFailed != null:
return loginFailed(_that);case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case _RegisterPressed() when registerPressed != null:
return registerPressed(_that);case _RegisterSuccessful() when registerSuccessful != null:
return registerSuccessful(_that);case _RegisterFailed() when registerFailed != null:
return registerFailed(_that);case _ForgotPasswordEmailChanged() when forgotPasswordEmailChanged != null:
return forgotPasswordEmailChanged(_that);case _ForgotPasswordPressed() when forgotPasswordPressed != null:
return forgotPasswordPressed(_that);case _ForgotPasswordSuccessful() when forgotPasswordSuccessful != null:
return forgotPasswordSuccessful(_that);case _ForgotPasswordFailed() when forgotPasswordFailed != null:
return forgotPasswordFailed(_that);case _ErrorMessageCleared() when errorMessageCleared != null:
return errorMessageCleared(_that);case _LogoutPressed() when logoutPressed != null:
return logoutPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthEvent value)  $default,{required TResult Function( _EmailChanged value)  emailChanged,required TResult Function( _PasswordChanged value)  passwordChanged,required TResult Function( _LoginPressed value)  loginPressed,required TResult Function( _LoginSuccessful value)  loginSuccessful,required TResult Function( _LoginFailed value)  loginFailed,required TResult Function( _FullNameChanged value)  fullNameChanged,required TResult Function( _PhoneChanged value)  phoneChanged,required TResult Function( _RegisterPressed value)  registerPressed,required TResult Function( _RegisterSuccessful value)  registerSuccessful,required TResult Function( _RegisterFailed value)  registerFailed,required TResult Function( _ForgotPasswordEmailChanged value)  forgotPasswordEmailChanged,required TResult Function( _ForgotPasswordPressed value)  forgotPasswordPressed,required TResult Function( _ForgotPasswordSuccessful value)  forgotPasswordSuccessful,required TResult Function( _ForgotPasswordFailed value)  forgotPasswordFailed,required TResult Function( _ErrorMessageCleared value)  errorMessageCleared,required TResult Function( _LogoutPressed value)  logoutPressed,}){
final _that = this;
switch (_that) {
case _AuthEvent():
return $default(_that);case _EmailChanged():
return emailChanged(_that);case _PasswordChanged():
return passwordChanged(_that);case _LoginPressed():
return loginPressed(_that);case _LoginSuccessful():
return loginSuccessful(_that);case _LoginFailed():
return loginFailed(_that);case _FullNameChanged():
return fullNameChanged(_that);case _PhoneChanged():
return phoneChanged(_that);case _RegisterPressed():
return registerPressed(_that);case _RegisterSuccessful():
return registerSuccessful(_that);case _RegisterFailed():
return registerFailed(_that);case _ForgotPasswordEmailChanged():
return forgotPasswordEmailChanged(_that);case _ForgotPasswordPressed():
return forgotPasswordPressed(_that);case _ForgotPasswordSuccessful():
return forgotPasswordSuccessful(_that);case _ForgotPasswordFailed():
return forgotPasswordFailed(_that);case _ErrorMessageCleared():
return errorMessageCleared(_that);case _LogoutPressed():
return logoutPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthEvent value)?  $default,{TResult? Function( _EmailChanged value)?  emailChanged,TResult? Function( _PasswordChanged value)?  passwordChanged,TResult? Function( _LoginPressed value)?  loginPressed,TResult? Function( _LoginSuccessful value)?  loginSuccessful,TResult? Function( _LoginFailed value)?  loginFailed,TResult? Function( _FullNameChanged value)?  fullNameChanged,TResult? Function( _PhoneChanged value)?  phoneChanged,TResult? Function( _RegisterPressed value)?  registerPressed,TResult? Function( _RegisterSuccessful value)?  registerSuccessful,TResult? Function( _RegisterFailed value)?  registerFailed,TResult? Function( _ForgotPasswordEmailChanged value)?  forgotPasswordEmailChanged,TResult? Function( _ForgotPasswordPressed value)?  forgotPasswordPressed,TResult? Function( _ForgotPasswordSuccessful value)?  forgotPasswordSuccessful,TResult? Function( _ForgotPasswordFailed value)?  forgotPasswordFailed,TResult? Function( _ErrorMessageCleared value)?  errorMessageCleared,TResult? Function( _LogoutPressed value)?  logoutPressed,}){
final _that = this;
switch (_that) {
case _AuthEvent() when $default != null:
return $default(_that);case _EmailChanged() when emailChanged != null:
return emailChanged(_that);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case _LoginPressed() when loginPressed != null:
return loginPressed(_that);case _LoginSuccessful() when loginSuccessful != null:
return loginSuccessful(_that);case _LoginFailed() when loginFailed != null:
return loginFailed(_that);case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case _RegisterPressed() when registerPressed != null:
return registerPressed(_that);case _RegisterSuccessful() when registerSuccessful != null:
return registerSuccessful(_that);case _RegisterFailed() when registerFailed != null:
return registerFailed(_that);case _ForgotPasswordEmailChanged() when forgotPasswordEmailChanged != null:
return forgotPasswordEmailChanged(_that);case _ForgotPasswordPressed() when forgotPasswordPressed != null:
return forgotPasswordPressed(_that);case _ForgotPasswordSuccessful() when forgotPasswordSuccessful != null:
return forgotPasswordSuccessful(_that);case _ForgotPasswordFailed() when forgotPasswordFailed != null:
return forgotPasswordFailed(_that);case _ErrorMessageCleared() when errorMessageCleared != null:
return errorMessageCleared(_that);case _LogoutPressed() when logoutPressed != null:
return logoutPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function()?  loginPressed,TResult Function()?  loginSuccessful,TResult Function( String? message)?  loginFailed,TResult Function( String fullName)?  fullNameChanged,TResult Function( String phone)?  phoneChanged,TResult Function()?  registerPressed,TResult Function()?  registerSuccessful,TResult Function( String? message)?  registerFailed,TResult Function( String email)?  forgotPasswordEmailChanged,TResult Function()?  forgotPasswordPressed,TResult Function()?  forgotPasswordSuccessful,TResult Function( String? message)?  forgotPasswordFailed,TResult Function()?  errorMessageCleared,TResult Function()?  logoutPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthEvent() when $default != null:
return $default();case _EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case _LoginPressed() when loginPressed != null:
return loginPressed();case _LoginSuccessful() when loginSuccessful != null:
return loginSuccessful();case _LoginFailed() when loginFailed != null:
return loginFailed(_that.message);case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that.fullName);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case _RegisterPressed() when registerPressed != null:
return registerPressed();case _RegisterSuccessful() when registerSuccessful != null:
return registerSuccessful();case _RegisterFailed() when registerFailed != null:
return registerFailed(_that.message);case _ForgotPasswordEmailChanged() when forgotPasswordEmailChanged != null:
return forgotPasswordEmailChanged(_that.email);case _ForgotPasswordPressed() when forgotPasswordPressed != null:
return forgotPasswordPressed();case _ForgotPasswordSuccessful() when forgotPasswordSuccessful != null:
return forgotPasswordSuccessful();case _ForgotPasswordFailed() when forgotPasswordFailed != null:
return forgotPasswordFailed(_that.message);case _ErrorMessageCleared() when errorMessageCleared != null:
return errorMessageCleared();case _LogoutPressed() when logoutPressed != null:
return logoutPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,{required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function()  loginPressed,required TResult Function()  loginSuccessful,required TResult Function( String? message)  loginFailed,required TResult Function( String fullName)  fullNameChanged,required TResult Function( String phone)  phoneChanged,required TResult Function()  registerPressed,required TResult Function()  registerSuccessful,required TResult Function( String? message)  registerFailed,required TResult Function( String email)  forgotPasswordEmailChanged,required TResult Function()  forgotPasswordPressed,required TResult Function()  forgotPasswordSuccessful,required TResult Function( String? message)  forgotPasswordFailed,required TResult Function()  errorMessageCleared,required TResult Function()  logoutPressed,}) {final _that = this;
switch (_that) {
case _AuthEvent():
return $default();case _EmailChanged():
return emailChanged(_that.email);case _PasswordChanged():
return passwordChanged(_that.password);case _LoginPressed():
return loginPressed();case _LoginSuccessful():
return loginSuccessful();case _LoginFailed():
return loginFailed(_that.message);case _FullNameChanged():
return fullNameChanged(_that.fullName);case _PhoneChanged():
return phoneChanged(_that.phone);case _RegisterPressed():
return registerPressed();case _RegisterSuccessful():
return registerSuccessful();case _RegisterFailed():
return registerFailed(_that.message);case _ForgotPasswordEmailChanged():
return forgotPasswordEmailChanged(_that.email);case _ForgotPasswordPressed():
return forgotPasswordPressed();case _ForgotPasswordSuccessful():
return forgotPasswordSuccessful();case _ForgotPasswordFailed():
return forgotPasswordFailed(_that.message);case _ErrorMessageCleared():
return errorMessageCleared();case _LogoutPressed():
return logoutPressed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,{TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function()?  loginPressed,TResult? Function()?  loginSuccessful,TResult? Function( String? message)?  loginFailed,TResult? Function( String fullName)?  fullNameChanged,TResult? Function( String phone)?  phoneChanged,TResult? Function()?  registerPressed,TResult? Function()?  registerSuccessful,TResult? Function( String? message)?  registerFailed,TResult? Function( String email)?  forgotPasswordEmailChanged,TResult? Function()?  forgotPasswordPressed,TResult? Function()?  forgotPasswordSuccessful,TResult? Function( String? message)?  forgotPasswordFailed,TResult? Function()?  errorMessageCleared,TResult? Function()?  logoutPressed,}) {final _that = this;
switch (_that) {
case _AuthEvent() when $default != null:
return $default();case _EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case _LoginPressed() when loginPressed != null:
return loginPressed();case _LoginSuccessful() when loginSuccessful != null:
return loginSuccessful();case _LoginFailed() when loginFailed != null:
return loginFailed(_that.message);case _FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that.fullName);case _PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case _RegisterPressed() when registerPressed != null:
return registerPressed();case _RegisterSuccessful() when registerSuccessful != null:
return registerSuccessful();case _RegisterFailed() when registerFailed != null:
return registerFailed(_that.message);case _ForgotPasswordEmailChanged() when forgotPasswordEmailChanged != null:
return forgotPasswordEmailChanged(_that.email);case _ForgotPasswordPressed() when forgotPasswordPressed != null:
return forgotPasswordPressed();case _ForgotPasswordSuccessful() when forgotPasswordSuccessful != null:
return forgotPasswordSuccessful();case _ForgotPasswordFailed() when forgotPasswordFailed != null:
return forgotPasswordFailed(_that.message);case _ErrorMessageCleared() when errorMessageCleared != null:
return errorMessageCleared();case _LogoutPressed() when logoutPressed != null:
return logoutPressed();case _:
  return null;

}
}

}

/// @nodoc


class _AuthEvent implements AuthEvent {
  const _AuthEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}




/// @nodoc


class _EmailChanged implements AuthEvent {
  const _EmailChanged(this.email);
  

 final  String email;

/// Create a copy of AuthEvent
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
  return 'AuthEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
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

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordChanged implements AuthEvent {
  const _PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'AuthEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) _then) = __$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoginPressed implements AuthEvent {
  const _LoginPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.loginPressed()';
}


}




/// @nodoc


class _LoginSuccessful implements AuthEvent {
  const _LoginSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.loginSuccessful()';
}


}




/// @nodoc


class _LoginFailed implements AuthEvent {
  const _LoginFailed([this.message]);
  

 final  String? message;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFailedCopyWith<_LoginFailed> get copyWith => __$LoginFailedCopyWithImpl<_LoginFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthEvent.loginFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoginFailedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginFailedCopyWith(_LoginFailed value, $Res Function(_LoginFailed) _then) = __$LoginFailedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$LoginFailedCopyWithImpl<$Res>
    implements _$LoginFailedCopyWith<$Res> {
  __$LoginFailedCopyWithImpl(this._self, this._then);

  final _LoginFailed _self;
  final $Res Function(_LoginFailed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_LoginFailed(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _FullNameChanged implements AuthEvent {
  const _FullNameChanged(this.fullName);
  

 final  String fullName;

/// Create a copy of AuthEvent
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
  return 'AuthEvent.fullNameChanged(fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$FullNameChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
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

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullName = null,}) {
  return _then(_FullNameChanged(
null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PhoneChanged implements AuthEvent {
  const _PhoneChanged(this.phone);
  

 final  String phone;

/// Create a copy of AuthEvent
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
  return 'AuthEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PhoneChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
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

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_PhoneChanged(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RegisterPressed implements AuthEvent {
  const _RegisterPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.registerPressed()';
}


}




/// @nodoc


class _RegisterSuccessful implements AuthEvent {
  const _RegisterSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.registerSuccessful()';
}


}




/// @nodoc


class _RegisterFailed implements AuthEvent {
  const _RegisterFailed([this.message]);
  

 final  String? message;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFailedCopyWith<_RegisterFailed> get copyWith => __$RegisterFailedCopyWithImpl<_RegisterFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthEvent.registerFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RegisterFailedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterFailedCopyWith(_RegisterFailed value, $Res Function(_RegisterFailed) _then) = __$RegisterFailedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$RegisterFailedCopyWithImpl<$Res>
    implements _$RegisterFailedCopyWith<$Res> {
  __$RegisterFailedCopyWithImpl(this._self, this._then);

  final _RegisterFailed _self;
  final $Res Function(_RegisterFailed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_RegisterFailed(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ForgotPasswordEmailChanged implements AuthEvent {
  const _ForgotPasswordEmailChanged(this.email);
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordEmailChangedCopyWith<_ForgotPasswordEmailChanged> get copyWith => __$ForgotPasswordEmailChangedCopyWithImpl<_ForgotPasswordEmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordEmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.forgotPasswordEmailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordEmailChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ForgotPasswordEmailChangedCopyWith(_ForgotPasswordEmailChanged value, $Res Function(_ForgotPasswordEmailChanged) _then) = __$ForgotPasswordEmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$ForgotPasswordEmailChangedCopyWithImpl<$Res>
    implements _$ForgotPasswordEmailChangedCopyWith<$Res> {
  __$ForgotPasswordEmailChangedCopyWithImpl(this._self, this._then);

  final _ForgotPasswordEmailChanged _self;
  final $Res Function(_ForgotPasswordEmailChanged) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_ForgotPasswordEmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ForgotPasswordPressed implements AuthEvent {
  const _ForgotPasswordPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.forgotPasswordPressed()';
}


}




/// @nodoc


class _ForgotPasswordSuccessful implements AuthEvent {
  const _ForgotPasswordSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.forgotPasswordSuccessful()';
}


}




/// @nodoc


class _ForgotPasswordFailed implements AuthEvent {
  const _ForgotPasswordFailed([this.message]);
  

 final  String? message;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordFailedCopyWith<_ForgotPasswordFailed> get copyWith => __$ForgotPasswordFailedCopyWithImpl<_ForgotPasswordFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthEvent.forgotPasswordFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordFailedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ForgotPasswordFailedCopyWith(_ForgotPasswordFailed value, $Res Function(_ForgotPasswordFailed) _then) = __$ForgotPasswordFailedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ForgotPasswordFailedCopyWithImpl<$Res>
    implements _$ForgotPasswordFailedCopyWith<$Res> {
  __$ForgotPasswordFailedCopyWithImpl(this._self, this._then);

  final _ForgotPasswordFailed _self;
  final $Res Function(_ForgotPasswordFailed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ForgotPasswordFailed(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ErrorMessageCleared implements AuthEvent {
  const _ErrorMessageCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorMessageCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.errorMessageCleared()';
}


}




/// @nodoc


class _LogoutPressed implements AuthEvent {
  const _LogoutPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutPressed()';
}


}




/// @nodoc
mixin _$AuthState {

// --- Form Fields ---
 EmailFormz get email; PasswordFormz get password; FullNameFormz get fullName; PhoneFormz get phone; ForgotPasswordFormz get forgotPasswordEmail;// --- Submission Statuses ---
 FormzSubmissionStatus get loginStatus; FormzSubmissionStatus get registerStatus; FormzSubmissionStatus get forgotPasswordStatus;// --- User Data ---
 User? get user; String? get userEmail;// --- Error Handling ---
 String? get errorMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.forgotPasswordEmail, forgotPasswordEmail) || other.forgotPasswordEmail == forgotPasswordEmail)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.registerStatus, registerStatus) || other.registerStatus == registerStatus)&&(identical(other.forgotPasswordStatus, forgotPasswordStatus) || other.forgotPasswordStatus == forgotPasswordStatus)&&(identical(other.user, user) || other.user == user)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,fullName,phone,forgotPasswordEmail,loginStatus,registerStatus,forgotPasswordStatus,user,userEmail,errorMessage);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, fullName: $fullName, phone: $phone, forgotPasswordEmail: $forgotPasswordEmail, loginStatus: $loginStatus, registerStatus: $registerStatus, forgotPasswordStatus: $forgotPasswordStatus, user: $user, userEmail: $userEmail, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 EmailFormz email, PasswordFormz password, FullNameFormz fullName, PhoneFormz phone, ForgotPasswordFormz forgotPasswordEmail, FormzSubmissionStatus loginStatus, FormzSubmissionStatus registerStatus, FormzSubmissionStatus forgotPasswordStatus, User? user, String? userEmail, String? errorMessage
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? fullName = null,Object? phone = null,Object? forgotPasswordEmail = null,Object? loginStatus = null,Object? registerStatus = null,Object? forgotPasswordStatus = null,Object? user = freezed,Object? userEmail = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormz,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullNameFormz,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneFormz,forgotPasswordEmail: null == forgotPasswordEmail ? _self.forgotPasswordEmail : forgotPasswordEmail // ignore: cast_nullable_to_non_nullable
as ForgotPasswordFormz,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,registerStatus: null == registerStatus ? _self.registerStatus : registerStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,forgotPasswordStatus: null == forgotPasswordStatus ? _self.forgotPasswordStatus : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailFormz email,  PasswordFormz password,  FullNameFormz fullName,  PhoneFormz phone,  ForgotPasswordFormz forgotPasswordEmail,  FormzSubmissionStatus loginStatus,  FormzSubmissionStatus registerStatus,  FormzSubmissionStatus forgotPasswordStatus,  User? user,  String? userEmail,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.email,_that.password,_that.fullName,_that.phone,_that.forgotPasswordEmail,_that.loginStatus,_that.registerStatus,_that.forgotPasswordStatus,_that.user,_that.userEmail,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailFormz email,  PasswordFormz password,  FullNameFormz fullName,  PhoneFormz phone,  ForgotPasswordFormz forgotPasswordEmail,  FormzSubmissionStatus loginStatus,  FormzSubmissionStatus registerStatus,  FormzSubmissionStatus forgotPasswordStatus,  User? user,  String? userEmail,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.email,_that.password,_that.fullName,_that.phone,_that.forgotPasswordEmail,_that.loginStatus,_that.registerStatus,_that.forgotPasswordStatus,_that.user,_that.userEmail,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailFormz email,  PasswordFormz password,  FullNameFormz fullName,  PhoneFormz phone,  ForgotPasswordFormz forgotPasswordEmail,  FormzSubmissionStatus loginStatus,  FormzSubmissionStatus registerStatus,  FormzSubmissionStatus forgotPasswordStatus,  User? user,  String? userEmail,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.email,_that.password,_that.fullName,_that.phone,_that.forgotPasswordEmail,_that.loginStatus,_that.registerStatus,_that.forgotPasswordStatus,_that.user,_that.userEmail,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState extends AuthState {
  const _AuthState({this.email = const EmailFormz.pure(), this.password = const PasswordFormz.pure(), this.fullName = const FullNameFormz.pure(), this.phone = const PhoneFormz.pure(), this.forgotPasswordEmail = const ForgotPasswordFormz.pure(), this.loginStatus = FormzSubmissionStatus.initial, this.registerStatus = FormzSubmissionStatus.initial, this.forgotPasswordStatus = FormzSubmissionStatus.initial, this.user, this.userEmail, this.errorMessage}): super._();
  

// --- Form Fields ---
@override@JsonKey() final  EmailFormz email;
@override@JsonKey() final  PasswordFormz password;
@override@JsonKey() final  FullNameFormz fullName;
@override@JsonKey() final  PhoneFormz phone;
@override@JsonKey() final  ForgotPasswordFormz forgotPasswordEmail;
// --- Submission Statuses ---
@override@JsonKey() final  FormzSubmissionStatus loginStatus;
@override@JsonKey() final  FormzSubmissionStatus registerStatus;
@override@JsonKey() final  FormzSubmissionStatus forgotPasswordStatus;
// --- User Data ---
@override final  User? user;
@override final  String? userEmail;
// --- Error Handling ---
@override final  String? errorMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.forgotPasswordEmail, forgotPasswordEmail) || other.forgotPasswordEmail == forgotPasswordEmail)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.registerStatus, registerStatus) || other.registerStatus == registerStatus)&&(identical(other.forgotPasswordStatus, forgotPasswordStatus) || other.forgotPasswordStatus == forgotPasswordStatus)&&(identical(other.user, user) || other.user == user)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,fullName,phone,forgotPasswordEmail,loginStatus,registerStatus,forgotPasswordStatus,user,userEmail,errorMessage);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, fullName: $fullName, phone: $phone, forgotPasswordEmail: $forgotPasswordEmail, loginStatus: $loginStatus, registerStatus: $registerStatus, forgotPasswordStatus: $forgotPasswordStatus, user: $user, userEmail: $userEmail, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 EmailFormz email, PasswordFormz password, FullNameFormz fullName, PhoneFormz phone, ForgotPasswordFormz forgotPasswordEmail, FormzSubmissionStatus loginStatus, FormzSubmissionStatus registerStatus, FormzSubmissionStatus forgotPasswordStatus, User? user, String? userEmail, String? errorMessage
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? fullName = null,Object? phone = null,Object? forgotPasswordEmail = null,Object? loginStatus = null,Object? registerStatus = null,Object? forgotPasswordStatus = null,Object? user = freezed,Object? userEmail = freezed,Object? errorMessage = freezed,}) {
  return _then(_AuthState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormz,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullNameFormz,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneFormz,forgotPasswordEmail: null == forgotPasswordEmail ? _self.forgotPasswordEmail : forgotPasswordEmail // ignore: cast_nullable_to_non_nullable
as ForgotPasswordFormz,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,registerStatus: null == registerStatus ? _self.registerStatus : registerStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,forgotPasswordStatus: null == forgotPasswordStatus ? _self.forgotPasswordStatus : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
