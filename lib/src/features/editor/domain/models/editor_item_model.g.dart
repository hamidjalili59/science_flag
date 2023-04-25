// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EditorItemModelAdapter extends TypeAdapter<EditorItemModel> {
  @override
  final int typeId = 2;

  @override
  EditorItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EditorItemModel(
      fields[0] == null ? 0 : fields[0] as int,
      fields[1] as dynamic,
      fields[2] == null ? EditorItemType.text : fields[2] as EditorItemType,
      fields[3] == null ? false : fields[3] as bool,
      fields[4] == null ? '' : fields[4] as String,
      fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, EditorItemModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.haveTitle)
      ..writeByte(4)
      ..write(obj.titleContent)
      ..writeByte(5)
      ..write(obj.focusNode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EditorItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorItemModel _$EditorItemModelFromJson(Map<String, dynamic> json) =>
    EditorItemModel(
      json['index'] as int,
      json['data'],
      $enumDecode(_$EditorItemTypeEnumMap, json['type']),
      json['haveTitle'] as bool,
      json['titleContent'] as String,
      json['focusNode'],
    );

Map<String, dynamic> _$EditorItemModelToJson(EditorItemModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'data': instance.data,
      'type': _$EditorItemTypeEnumMap[instance.type]!,
      'haveTitle': instance.haveTitle,
      'titleContent': instance.titleContent,
      'focusNode': instance.focusNode,
    };

const _$EditorItemTypeEnumMap = {
  EditorItemType.text: 'text',
  EditorItemType.camera: 'camera',
  EditorItemType.image: 'image',
  EditorItemType.formula: 'formula',
  EditorItemType.list: 'list',
};
