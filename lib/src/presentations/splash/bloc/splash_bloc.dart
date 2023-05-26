// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:base_project/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:base_project/src/features/core/models/tuple.dart' as tuple;
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetCachedAuthDataUseCase _getCachedAuthDataUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  SplashBloc(
    this._getCachedAuthDataUseCase,
  ) : super(const _LoadInProgress()) {
    on<_JwtIsExist>(_jwtIsExist);
    on<_ReadingData>(_onReadingData);
  }
  @override
  void onEvent(SplashEvent event) {
    FunctionHelper().logMessage('>>>>> Splash Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  // __

  FutureOr<void> _jwtIsExist(
    _JwtIsExist event,
    Emitter<SplashState> emit,
  ) async {
    emit(const _LoadInProgress());
    try {
      final getCacheResult = await _getCachedAuthDataUseCase();
      await Future.delayed(const Duration(seconds: 3));
      getCacheResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) {
          if (r == null) {
            return emit(const _Failure(failure: AuthFailure.nullParam()));
          }
          getIt.registerSingleton<OtpVerifyResponse>(r);
          emit(_JwtExist(r));
        },
      );
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }

  FutureOr<void> _onReadingData(event, Emitter<SplashState> emit) {
    getIt.get<AppRouter>().replaceNamed('/home');
  }
}
