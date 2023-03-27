import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:database_service/database_service.dart';

class AuthLocalDataSource extends DatabaseCommonOperations<OtpLoginResponse> {
  final DatabaseService dbService;

  AuthLocalDataSource(this.dbService)
      : super(
          boxName: 'AuthDataSource',
          databaseService: dbService,
        );
}
