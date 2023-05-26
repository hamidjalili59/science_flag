part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loadInProgress() = _LoadInProgress;
  const factory SplashState.jwtExist(OtpVerifyResponse verify) = _JwtExist;
  const factory SplashState.failure({
    AuthFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
