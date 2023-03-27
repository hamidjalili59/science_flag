import 'dart:async';

import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_state.dart';
part 'splash_event.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<_ReadingData>(_onReadingData);
    on<_Logining>(_onLogining);
  }
  @override
  void onEvent(SplashEvent event) {
    FunctionHelper().logMessage('>>>>> Splash Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  //
  FutureOr<void> _onReadingData(
    _ReadingData event,
    Emitter<SplashState> emit,
  ) {
    emit(const SplashState.sucessfull());
  }

  //
  FutureOr<void> _onLogining(
    _Logining event,
    Emitter<SplashState> emit,
  ) {}
}
