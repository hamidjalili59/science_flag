import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'otp_handshake_response.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class OtpHandshakeResponse {
  @HiveField(0)
  final int verifyCode;

  OtpHandshakeResponse({required this.verifyCode});
  
  factory OtpHandshakeResponse.fromJson(Map<String,dynamic>json) => _$OtpHandshakeResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$OtpHandshakeResponseToJson(this);
}
