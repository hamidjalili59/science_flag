import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_login_request.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class OtpLoginRequest {
  @HiveField(0, defaultValue: '')
  final String email;
  @HiveField(1, defaultValue: '')
  final String password;

  OtpLoginRequest({
    required this.email,
    required this.password,
  });

  factory OtpLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OtpLoginRequestToJson(this);
}
