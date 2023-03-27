// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BaseResponseAdapter extends TypeAdapter<BaseResponse> {
  @override
  final int typeId = 3;

  @override
  BaseResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseResponse(
      jwt: fields[0] as String,
      phoneNumber: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, BaseResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.jwt)
      ..writeByte(1)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      jwt: json['jwt'] as String,
      phoneNumber: (json['phoneNumber'] as num).toDouble(),
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'phoneNumber': instance.phoneNumber,
    };
