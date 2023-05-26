import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notes_item_list_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class NotesItemListModel {
  @HiveField(0, defaultValue: 'none')
  final String icon;
  @HiveField(1, defaultValue: 'unknown')
  final String name;
  @HiveField(2, defaultValue: 'self')
  final String owner;
  @HiveField(3, defaultValue: 'unknown')
  final String category;
  @HiveField(4, defaultValue: false)
  final bool doHisHavePractice;
  @HiveField(5, defaultValue: '')
  final String id;

  NotesItemListModel(
    this.icon,
    this.name,
    this.owner,
    this.category,
    this.doHisHavePractice,
    this.id,
  );

  factory NotesItemListModel.fromJson(Map<String, dynamic> json) =>
      _$NotesItemListModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotesItemListModelToJson(this);
}
