import 'dart:async';

import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'math_keyboard_state.dart';
part 'math_keyboard_event.dart';
part 'math_keyboard_bloc.freezed.dart';

@lazySingleton
class MathKeyboardBloc extends Bloc<MathKeyboardEvent, MathKeyboardState> {
  MathKeyboardBloc() : super(const MathKeyboardState.idle()) {
    on<_Write>(_onWrite);
    on<_SwitchTabs>(_onSwitchTabs);
    on<_SwitchPosition>(_onSwitchPosition);
    on<_Remove>(_onRemove);
    on<_ChangeEditMode>(_onChangeEditMode);
    on<_Submmit>(_onSubmmit);
  }
  @override
  void onEvent(MathKeyboardEvent event) {
    FunctionHelper()
        .logMessage('>>>>> MathKeboard Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onWrite(_Write event, Emitter<MathKeyboardState> emit) {
    emit(state.copyWith(data: event.value));
  }

  FutureOr<void> _onSwitchTabs(
      _SwitchTabs event, Emitter<MathKeyboardState> emit) {
    emit(state.copyWith(isAdvanced: !state.isAdvanced));
  }

  FutureOr<void> _onSwitchPosition(
      _SwitchPosition event, Emitter<MathKeyboardState> emit) {}

  FutureOr<void> _onRemove(_Remove event, Emitter<MathKeyboardState> emit) {}

  FutureOr<void> _onSubmmit(_Submmit event, Emitter<MathKeyboardState> emit) {}

  FutureOr<void> _onChangeEditMode(
      _ChangeEditMode event, Emitter<MathKeyboardState> emit) {
    emit(state.copyWith(editMode: !state.editMode));
  }
}
