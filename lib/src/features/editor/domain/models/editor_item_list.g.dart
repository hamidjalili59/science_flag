// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_item_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EditorItemListAdapter extends TypeAdapter<EditorItemList> {
  @override
  final int typeId = 3;

  @override
  EditorItemList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EditorItemList(
      fields[0] == null ? [] : (fields[0] as List).cast<EditorItemModel>(),
      fields[1] == null
          ? EditorItemLayoutType.oneBloc
          : fields[1] as EditorItemLayoutType,
    );
  }

  @override
  void write(BinaryWriter writer, EditorItemList obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.items)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EditorItemListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorItemList _$EditorItemListFromJson(Map<String, dynamic> json) =>
    EditorItemList(
      (json['items'] as List<dynamic>)
          .map((e) => EditorItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $enumDecode(_$EditorItemLayoutTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$EditorItemListToJson(EditorItemList instance) =>
    <String, dynamic>{
      'items': instance.items,
      'type': _$EditorItemLayoutTypeEnumMap[instance.type]!,
    };

const _$EditorItemLayoutTypeEnumMap = {
  EditorItemLayoutType.oneBloc: 'oneBloc',
  EditorItemLayoutType.twoBloc: 'twoBloc',
  EditorItemLayoutType.threeBloc: 'threeBloc',
  EditorItemLayoutType.bigLeftBloc: 'bigLeftBloc',
  EditorItemLayoutType.bigMiddle: 'bigMiddle',
};
