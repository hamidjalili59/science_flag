part of 'math_keyboard_bloc.dart';

@freezed
class MathKeyboardState with _$MathKeyboardState {
  const factory MathKeyboardState.idle({
    @Default(false) bool isLoading,
    @Default('') String data,
    @Default(0) int position,
    @Default(false) bool isAdvanced,
    @Default(false) bool editMode,
    FocusNode? focusNode,
  }) = _Idle;
}
