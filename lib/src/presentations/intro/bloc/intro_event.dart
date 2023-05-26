part of 'intro_bloc.dart';

@freezed
class IntroEvent with _$IntroEvent {
  const factory IntroEvent.changePages(
    int index,
  ) = _ChangePages;
}
