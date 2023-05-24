part of 'intro_bloc.dart';

@freezed
class IntroState with _$IntroState {
  const factory IntroState.currentPageIndex(
      {@Default(0) int pageState}) = _CurrentPageIndex;
}
