import 'dart:convert';

import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _remoteDS;
  final AuthLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  AuthRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<AuthFailure, OtpLoginResponse>> otpLogin({
    required String email,
    required String password,
  }) async {
    return await _remoteDS
        .otpLogin(email: email, password: password)
        .then((response) => response.fold(
              (l) => left<AuthFailure, OtpLoginResponse>(AuthFailure.api(l)),
              (r) {
                try {
                  return response.fold(
                    (l) =>
                        left<AuthFailure, OtpLoginResponse>(AuthFailure.api(l)),
                    (r) {
                      r.headers.map.forEach((name, values) {
                        if (name == 'set-cookie') {
                          GeneralConstants.jwt = values.first;
                        }
                      });
                      Map<String, dynamic> result = jsonDecode(r.data ?? "{}");
                      return right<AuthFailure, OtpLoginResponse>(
                        OtpLoginResponse(
                            token: result['token'] ?? "",
                            email: result['email'] ?? "",
                            password: result['password'] ?? ""),
                      );
                    },
                  );
                } catch (_) {
                  return left<AuthFailure, OtpLoginResponse>(
                      const AuthFailure.nullParam());
                }
              },
            ));
  }

  @override
  Future<Either<AuthFailure, void>> cacheAuthData({
    required String token,
    required String email,
    required String password,
  }) {
    return _localDS
        .cacheData(
            fieldKey: tokenFieldKey,
            value: OtpLoginResponse(
                email: email, token: token, password: password))
        .then(
          (value) => value.fold(
            (l) => left<AuthFailure, void>(AuthFailure.database(l)),
            (r) => right<AuthFailure, void>(null),
          ),
        );
  }

//

  @override
  Future<Either<AuthFailure, OtpLoginResponse?>> getCachedAuthData() =>
      _localDS.getCachedData(fieldKey: tokenFieldKey).then(
            (value) => value.fold(
              (l) =>
                  left<AuthFailure, OtpLoginResponse?>(AuthFailure.database(l)),
              (r) => right<AuthFailure, OtpLoginResponse?>(r),
            ),
          );

//
  @override
  Future<Either<AuthFailure, void>> logout() => _localDS
      .removeData(
        value: OtpLoginResponse(token: '', email: '', password: ''),
        fieldKey: tokenFieldKey,
      )
      .then(
        (value) => value.fold(
          (l) => left<AuthFailure, void>(AuthFailure.database(l)),
          (r) => right<AuthFailure, void>(null),
        ),
      );

  @override
  Future<Either<AuthFailure, OtpLoginResponse>> otpSignup(
      {required String email, required String password}) {
    return _remoteDS
        .otpLogin(email: email, password: password)
        .then((response) {
      return response.fold(
        (l) => left<AuthFailure, OtpLoginResponse>(AuthFailure.api(l)),
        (r) {
          try {
            return response.fold(
              (l) => left<AuthFailure, OtpLoginResponse>(AuthFailure.api(l)),
              (r) {
                r.headers.map.forEach((name, values) {
                  if (name == 'set-cookie') {
                    GeneralConstants.jwt = values.first;
                  }
                });
                final result = jsonDecode(r.data ?? "{}");
                return right<AuthFailure, OtpLoginResponse>(
                  OtpLoginResponse(
                      token: result['token'] ?? "",
                      email: result['email'] ?? "",
                      password: result['password'] ?? ""),
                );
              },
            );
          } catch (_) {
            return left<AuthFailure, OtpLoginResponse>(
                const AuthFailure.nullParam());
          }
        },
      );
    });
  }
}
