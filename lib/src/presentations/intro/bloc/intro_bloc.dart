// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'intro_state.dart';
part 'intro_event.dart';
part 'intro_bloc.freezed.dart';

@injectable
class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(const _CurrentPageIndex(pageState: 0)) {
    on<_ChangePages>(_onChangePage);
  }

  @override
  void onEvent(IntroEvent event) {
    FunctionHelper().logMessage('>>>>> Intro Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onChangePage(
    _ChangePages event,
    Emitter<IntroState> emit,
  ) async {
    emit(_CurrentPageIndex(pageState: event.index));
  }
}
