// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:base_project/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart';
import 'package:base_project/src/features/auth/domain/use_cases/otp_handshake_use_case.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final OtpHandshakeUseCase _otpHandshakeUseCase;
  final CacheAuthDataUseCase _cacheAuthDataUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  AuthBloc(
    this._otpHandshakeUseCase,
    this._cacheAuthDataUseCase,
  ) : super(const _Idle()) {
    on<_OtpHandshake>(_onOtpHandshake);
    on<_CacheAuthData>(_onCacheAuthData);
  }
  @override
  void onEvent(AuthEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onOtpHandshake(
    _OtpHandshake event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _Idle(isLoading: true));
    try {
      final handshakeResult =
          await _otpHandshakeUseCase(param: tuple.Tuple1(event.phoneNumber));
      await Future.delayed(const Duration(seconds: 2));
      handshakeResult.fold(
        (l) {
          emit(_Failure(failure: l));
          emit(const _Idle(isLoading: false));
        },
        (r) {
          emit(_OtpHandshakeSuccess(r));
        },
      );
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
      emit(const _Idle(isLoading: false));
    }
  }

  FutureOr<void> _onCacheAuthData(
    _CacheAuthData event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle(isLoading: true));
    try {
      final cacheResult = await _cacheAuthDataUseCase(
        param: tuple.Tuple2<String, double>(
          event.verify.jwt,
          event.verify.phoneNumber,
        ),
      );
      cacheResult.fold(
        (l) {
          emit(_Failure(failure: l));
          emit(const _Idle(isLoading: false));
        },
        (r) {
          return null;
        },
      );
    } catch (e) {
      emit(_Failure(message: e.toString()));
      emit(const _Idle(isLoading: false));
    }
  }
}
