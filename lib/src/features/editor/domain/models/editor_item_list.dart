import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'editor_item_list.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class EditorItemList {
  @HiveField(0, defaultValue: {})
  final Map<String, dynamic> items;
  @HiveField(1, defaultValue: EditorItemType.text)
  final EditorItemType type;

  EditorItemList(this.items, this.type);

  factory EditorItemList.fromJson(Map<String, dynamic> json) =>
      _$EditorItemListFromJson(json);

  Map<String, dynamic> toJson() => _$EditorItemListToJson(this);
}
