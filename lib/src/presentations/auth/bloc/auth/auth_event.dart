part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String email, String password) = _login;
  const factory AuthEvent.signup(String email, String password) = _signup;
}
