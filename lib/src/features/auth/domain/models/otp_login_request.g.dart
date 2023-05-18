// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_login_request.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpLoginRequestAdapter extends TypeAdapter<OtpLoginRequest> {
  @override
  final int typeId = 1;

  @override
  OtpLoginRequest read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpLoginRequest(
      email: fields[0] == null ? '' : fields[0] as String,
      password: fields[1] == null ? '' : fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpLoginRequest obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpLoginRequestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpLoginRequest _$OtpLoginRequestFromJson(Map<String, dynamic> json) =>
    OtpLoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$OtpLoginRequestToJson(OtpLoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
