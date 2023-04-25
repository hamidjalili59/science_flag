import 'package:base_project/src/features/editor/domain/models/editor_item_model.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'editor_item_list.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class EditorItemList {
  @HiveField(0, defaultValue: [])
  final List<EditorItemModel> items;
  @HiveField(1, defaultValue: EditorItemLayoutType.oneBloc)
  final EditorItemLayoutType type;

  EditorItemList(this.items, this.type);

  factory EditorItemList.fromJson(Map<String, dynamic> json) =>
      _$EditorItemListFromJson(json);

  Map<String, dynamic> toJson() => _$EditorItemListToJson(this);
}
