import 'dart:async';

import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_Refresh>(_onRefresh);
  }
  @override
  void onEvent(HomeEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onRefresh(
    _Refresh event,
    Emitter<HomeState> emit,
  ) {}
}
