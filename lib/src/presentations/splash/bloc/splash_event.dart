part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.readingData() = _ReadingData;
  const factory SplashEvent.jwtIsExist() = _JwtIsExist;
}
