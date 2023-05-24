part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.idle({@Default(false) bool isLoading}) = _Idle;

  const factory AuthState.otpHandshakeSuccess(
      OtpLoginResponse otpHandshakeResponse,
      {@Default(false) bool isLoading}) = _OtpHandshakeSuccess;

  const factory AuthState.otpVerifySuccess(
    OtpVerifyResponse verifyResponse,
  ) = _OtpVerifySuccess;

  const factory AuthState.failure({
    AuthFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
