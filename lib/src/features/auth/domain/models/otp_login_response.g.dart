// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_login_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpLoginResponseAdapter extends TypeAdapter<OtpLoginResponse> {
  @override
  final int typeId = 0;

  @override
  OtpLoginResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpLoginResponse(
      token: fields[0] == null ? '' : fields[0] as String,
      email: fields[1] == null ? '' : fields[1] as String,
      password: fields[2] == null ? '' : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpLoginResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpLoginResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpLoginResponse _$OtpLoginResponseFromJson(Map<String, dynamic> json) =>
    OtpLoginResponse(
      token: json['token'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$OtpLoginResponseToJson(OtpLoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'email': instance.email,
      'password': instance.password,
    };
