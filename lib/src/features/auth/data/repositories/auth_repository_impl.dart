import 'dart:convert';

import 'package:base_project/src/config/constants/general_constants.dart';
// import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:base_project/src/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
// import 'package:base_project/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:base_project/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _remoteDS;
  final AuthLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  AuthRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<AuthFailure, OtpLoginResponse>> otpHandshake(
      {required double phoneNumber}) {
    return _remoteDS
        .otpHandshake(phoneNumber: phoneNumber)
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
  Future<Either<AuthFailure, void>> cacheAuthData(
      {required String jwt, required double phoneNumber}) {
    return _localDS
        .cacheData(
            fieldKey: tokenFieldKey,
            value: OtpVerifyResponse(phoneNumber: phoneNumber, jwt: jwt))
        .then(
          (value) => value.fold(
            (l) => left<AuthFailure, void>(AuthFailure.database(l)),
            (r) => right<AuthFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<AuthFailure, OtpVerifyResponse?>> getCachedAuthData() =>
      _localDS.getCachedData(fieldKey: tokenFieldKey).then(
            (value) => value.fold(
              (l) => left<AuthFailure, OtpVerifyResponse?>(
                  AuthFailure.database(l)),
              (r) => right<AuthFailure, OtpVerifyResponse?>(r),
            ),
          );
}
