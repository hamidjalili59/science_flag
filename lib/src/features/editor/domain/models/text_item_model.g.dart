// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TextItemModelAdapter extends TypeAdapter<TextItemModel> {
  @override
  final int typeId = 35;

  @override
  TextItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TextItemModel(
      itemType:
          fields[0] == null ? EditorItemType.text : fields[0] as EditorItemType,
      data: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TextItemModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.itemType)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextItemModel _$$_TextItemModelFromJson(Map<String, dynamic> json) =>
    _$_TextItemModel(
      itemType: $enumDecodeNullable(_$EditorItemTypeEnumMap, json['type']) ??
          EditorItemType.text,
      data: json['data'] as String? ?? '',
    );

Map<String, dynamic> _$$_TextItemModelToJson(_$_TextItemModel instance) =>
    <String, dynamic>{
      'type': _$EditorItemTypeEnumMap[instance.itemType]!,
      'data': instance.data,
    };

const _$EditorItemTypeEnumMap = {
  EditorItemType.text: 'text',
  EditorItemType.camera: 'camera',
  EditorItemType.image: 'image',
  EditorItemType.formula: 'formula',
  EditorItemType.list: 'list',
};
