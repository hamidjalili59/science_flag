import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_login_response.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class OtpLoginResponse {
  @HiveField(0, defaultValue: '')
  final String token;
  @HiveField(1, defaultValue: '')
  final String email;
  @HiveField(2, defaultValue: '')
  final String password;

  OtpLoginResponse({
    required this.token,
    required this.email,
    required this.password,
  });

  factory OtpLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OtpLoginResponseToJson(this);
}
