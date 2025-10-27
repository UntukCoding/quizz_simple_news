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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loginwithemail value)?  loginwithemail,TResult Function( _Regis value)?  regis,TResult Function( _Loginwithgoogle value)?  loginwithgoogle,TResult Function( _CheckLogin value)?  checklogin,TResult Function( _Logout value)?  logout,TResult Function( _Logoutwithgoogle value)?  logoutwithgoogle,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loginwithemail() when loginwithemail != null:
return loginwithemail(_that);case _Regis() when regis != null:
return regis(_that);case _Loginwithgoogle() when loginwithgoogle != null:
return loginwithgoogle(_that);case _CheckLogin() when checklogin != null:
return checklogin(_that);case _Logout() when logout != null:
return logout(_that);case _Logoutwithgoogle() when logoutwithgoogle != null:
return logoutwithgoogle(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loginwithemail value)  loginwithemail,required TResult Function( _Regis value)  regis,required TResult Function( _Loginwithgoogle value)  loginwithgoogle,required TResult Function( _CheckLogin value)  checklogin,required TResult Function( _Logout value)  logout,required TResult Function( _Logoutwithgoogle value)  logoutwithgoogle,}){
final _that = this;
switch (_that) {
case _Loginwithemail():
return loginwithemail(_that);case _Regis():
return regis(_that);case _Loginwithgoogle():
return loginwithgoogle(_that);case _CheckLogin():
return checklogin(_that);case _Logout():
return logout(_that);case _Logoutwithgoogle():
return logoutwithgoogle(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loginwithemail value)?  loginwithemail,TResult? Function( _Regis value)?  regis,TResult? Function( _Loginwithgoogle value)?  loginwithgoogle,TResult? Function( _CheckLogin value)?  checklogin,TResult? Function( _Logout value)?  logout,TResult? Function( _Logoutwithgoogle value)?  logoutwithgoogle,}){
final _that = this;
switch (_that) {
case _Loginwithemail() when loginwithemail != null:
return loginwithemail(_that);case _Regis() when regis != null:
return regis(_that);case _Loginwithgoogle() when loginwithgoogle != null:
return loginwithgoogle(_that);case _CheckLogin() when checklogin != null:
return checklogin(_that);case _Logout() when logout != null:
return logout(_that);case _Logoutwithgoogle() when logoutwithgoogle != null:
return logoutwithgoogle(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  loginwithemail,TResult Function( String email,  String password)?  regis,TResult Function()?  loginwithgoogle,TResult Function()?  checklogin,TResult Function()?  logout,TResult Function()?  logoutwithgoogle,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loginwithemail() when loginwithemail != null:
return loginwithemail(_that.email,_that.password);case _Regis() when regis != null:
return regis(_that.email,_that.password);case _Loginwithgoogle() when loginwithgoogle != null:
return loginwithgoogle();case _CheckLogin() when checklogin != null:
return checklogin();case _Logout() when logout != null:
return logout();case _Logoutwithgoogle() when logoutwithgoogle != null:
return logoutwithgoogle();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  loginwithemail,required TResult Function( String email,  String password)  regis,required TResult Function()  loginwithgoogle,required TResult Function()  checklogin,required TResult Function()  logout,required TResult Function()  logoutwithgoogle,}) {final _that = this;
switch (_that) {
case _Loginwithemail():
return loginwithemail(_that.email,_that.password);case _Regis():
return regis(_that.email,_that.password);case _Loginwithgoogle():
return loginwithgoogle();case _CheckLogin():
return checklogin();case _Logout():
return logout();case _Logoutwithgoogle():
return logoutwithgoogle();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  loginwithemail,TResult? Function( String email,  String password)?  regis,TResult? Function()?  loginwithgoogle,TResult? Function()?  checklogin,TResult? Function()?  logout,TResult? Function()?  logoutwithgoogle,}) {final _that = this;
switch (_that) {
case _Loginwithemail() when loginwithemail != null:
return loginwithemail(_that.email,_that.password);case _Regis() when regis != null:
return regis(_that.email,_that.password);case _Loginwithgoogle() when loginwithgoogle != null:
return loginwithgoogle();case _CheckLogin() when checklogin != null:
return checklogin();case _Logout() when logout != null:
return logout();case _Logoutwithgoogle() when logoutwithgoogle != null:
return logoutwithgoogle();case _:
  return null;

}
}

}

/// @nodoc


class _Loginwithemail implements AuthEvent {
  const _Loginwithemail({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginwithemailCopyWith<_Loginwithemail> get copyWith => __$LoginwithemailCopyWithImpl<_Loginwithemail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loginwithemail&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.loginwithemail(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginwithemailCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginwithemailCopyWith(_Loginwithemail value, $Res Function(_Loginwithemail) _then) = __$LoginwithemailCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginwithemailCopyWithImpl<$Res>
    implements _$LoginwithemailCopyWith<$Res> {
  __$LoginwithemailCopyWithImpl(this._self, this._then);

  final _Loginwithemail _self;
  final $Res Function(_Loginwithemail) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_Loginwithemail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Regis implements AuthEvent {
  const _Regis({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisCopyWith<_Regis> get copyWith => __$RegisCopyWithImpl<_Regis>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Regis&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.regis(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RegisCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisCopyWith(_Regis value, $Res Function(_Regis) _then) = __$RegisCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$RegisCopyWithImpl<$Res>
    implements _$RegisCopyWith<$Res> {
  __$RegisCopyWithImpl(this._self, this._then);

  final _Regis _self;
  final $Res Function(_Regis) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_Regis(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Loginwithgoogle implements AuthEvent {
  const _Loginwithgoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loginwithgoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.loginwithgoogle()';
}


}




/// @nodoc


class _CheckLogin implements AuthEvent {
  const _CheckLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checklogin()';
}


}




/// @nodoc


class _Logout implements AuthEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc


class _Logoutwithgoogle implements AuthEvent {
  const _Logoutwithgoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logoutwithgoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutwithgoogle()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,TResult Function( _Logoutstate value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _Logoutstate() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,required TResult Function( _Logoutstate value)  logout,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _Logoutstate():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,TResult? Function( _Logoutstate value)?  logout,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _Logoutstate() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( User user)?  success,TResult Function( String message)?  error,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.user);case _Error() when error != null:
return error(_that.message);case _Logoutstate() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( User user)  success,required TResult Function( String message)  error,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.user);case _Error():
return error(_that.message);case _Logoutstate():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( User user)?  success,TResult? Function( String message)?  error,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.user);case _Error() when error != null:
return error(_that.message);case _Logoutstate() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _Success implements AuthState {
  const _Success(this.user);
  

 final  User user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Success(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _Error implements AuthState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Logoutstate implements AuthState {
  const _Logoutstate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logoutstate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.logout()';
}


}




// dart format on
