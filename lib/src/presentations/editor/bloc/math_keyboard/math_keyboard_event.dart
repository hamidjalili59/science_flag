part of 'math_keyboard_bloc.dart';

@freezed
class MathKeyboardEvent with _$MathKeyboardEvent {
  const factory MathKeyboardEvent.switchTabs() = _SwitchTabs;
  const factory MathKeyboardEvent.write(String value) = _Write;
  const factory MathKeyboardEvent.changeEditMode() = _ChangeEditMode;
  const factory MathKeyboardEvent.switchPosition(int position) =
      _SwitchPosition;
  const factory MathKeyboardEvent.remove(String value) = _Remove;
  const factory MathKeyboardEvent.submmit() = _Submmit;
}
