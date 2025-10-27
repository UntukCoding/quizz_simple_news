part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginwithemail({
    required String email,
    required String password,
  }) = _Loginwithemail;
  const factory AuthEvent.regis({
    required String email,
    required String password,
  }) = _Regis;
  const factory AuthEvent.loginwithgoogle() = _Loginwithgoogle;
  const factory AuthEvent.checklogin() = _CheckLogin;
  const factory AuthEvent.logout() = _Logout;
}
