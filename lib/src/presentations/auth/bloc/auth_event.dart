part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.otpHandshake(
    double phoneNumber,
  ) = _OtpHandshake;
  const factory AuthEvent.otpVerify(
    String code,
  ) = _OtpVerify;
  const factory AuthEvent.cacheAuthData(
    OtpVerifyResponse verify,
  ) = _CacheAuthData;
}
