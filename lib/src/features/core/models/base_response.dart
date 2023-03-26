import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class BaseResponse {
  @HiveField(0)
  final String jwt;
  @HiveField(1)
  final double phoneNumber;
  
  BaseResponse({
    required this.jwt,
    required this.phoneNumber,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}


