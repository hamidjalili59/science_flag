// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_item_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotesItemListModelAdapter extends TypeAdapter<_$_NotesItemListModel> {
  @override
  final int typeId = 1;

  @override
  _$_NotesItemListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_NotesItemListModel(
      icon: fields[0] == null ? '' : fields[0] as String,
      name: fields[1] == null ? '' : fields[1] as String,
      owner: fields[2] == null ? '' : fields[2] as String,
      category: fields[3] == null ? '' : fields[3] as String,
      doHisHavePractice: fields[4] == null ? false : fields[4] as bool,
      data: fields[5] == null
          ? []
          : (fields[5] as List)
              .map((dynamic e) => (e as Map).cast<String, dynamic>())
              .toList(),
      id: fields[6] == null ? '' : fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_NotesItemListModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.icon)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.owner)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.doHisHavePractice)
      ..writeByte(5)
      ..write(obj.data)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotesItemListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotesItemListModel _$$_NotesItemListModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotesItemListModel(
      icon: json['icon'] as String? ?? '',
      name: json['name'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      category: json['category'] as String? ?? '',
      doHisHavePractice: json['doHisHavePractice'] as bool? ?? false,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$_NotesItemListModelToJson(
        _$_NotesItemListModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'owner': instance.owner,
      'category': instance.category,
      'doHisHavePractice': instance.doHisHavePractice,
      'data': instance.data,
      'id': instance.id,
    };
