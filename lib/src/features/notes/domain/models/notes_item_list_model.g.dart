// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_item_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotesItemListModelAdapter extends TypeAdapter<NotesItemListModel> {
  @override
  final int typeId = 1;

  @override
  NotesItemListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotesItemListModel(
      fields[0] == null ? 'none' : fields[0] as String,
      fields[1] == null ? 'unknown' : fields[1] as String,
      fields[2] == null ? 'self' : fields[2] as String,
      fields[3] == null ? 'unknown' : fields[3] as String,
      fields[4] == null ? false : fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, NotesItemListModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.icon)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.owner)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.doHisHavePractice);
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

NotesItemListModel _$NotesItemListModelFromJson(Map<String, dynamic> json) =>
    NotesItemListModel(
      json['icon'] as String,
      json['title'] as String,
      json['owner'] as String,
      json['category'] as String,
      json['doHisHavePractice'] as bool,
    );

Map<String, dynamic> _$NotesItemListModelToJson(NotesItemListModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'title': instance.title,
      'owner': instance.owner,
      'category': instance.category,
      'doHisHavePractice': instance.doHisHavePractice,
    };
