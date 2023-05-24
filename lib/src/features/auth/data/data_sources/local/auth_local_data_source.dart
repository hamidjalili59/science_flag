import 'package:base_project/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:database_service/database_service.dart';

class AuthLocalDataSource extends DatabaseCommonOperations<OtpVerifyResponse> {
  final DatabaseService dbService;

  AuthLocalDataSource(this.dbService)
      : super(
          boxName: 'AuthDataSource',
          databaseService: dbService,
        );
}
