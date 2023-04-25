import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'editor_item_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class EditorItemModel {
  @HiveField(0, defaultValue: 0)
  final int index;
  @HiveField(1)
  final dynamic data;
  @HiveField(2, defaultValue: EditorItemType.text)
  final EditorItemType type;
  @HiveField(3, defaultValue: false)
  final bool haveTitle;
  @HiveField(4, defaultValue: '')
  final String titleContent;
  @HiveField(5)
  final dynamic focusNode;

  EditorItemModel(
    this.index,
    this.data,
    this.type,
    this.haveTitle,
    this.titleContent,
    this.focusNode,
  );

  factory EditorItemModel.fromJson(Map<String, dynamic> json) =>
      _$EditorItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditorItemModelToJson(this);
}
