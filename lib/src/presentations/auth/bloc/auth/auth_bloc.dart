import 'dart:async';

import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/auth/domain/use_cases/otp_login_use_case.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final OtpLoginUseCase _otpLoginUseCase;
  // final CacheAuthDataUseCase _cacheAuthDataUseCase;
  // final LogoutUseCase _logoutUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  AuthBloc(
    this._otpLoginUseCase,
  ) : super(const AuthState.initial()) {
    on<_login>(_onLogin);
  }
  @override
  void onEvent(AuthEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onLogin(
    _login event,
    Emitter<AuthState> emit,
  ) async {
    await _otpLoginUseCase
        .call(
      param: tuple.Tuple2<String, String>(
        event.email,
        event.password,
      ),
    )
        .then((value) {
      if (value.isRight()) {
        appRoute.replaceNamed('/');
      }
    });
  }
}
