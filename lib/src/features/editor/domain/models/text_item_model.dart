// ignore_for_file: invalid_annotation_target

import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'text_item_model.freezed.dart';
part 'text_item_model.g.dart';

@HiveType(typeId: 35)
@Freezed(
  copyWith: true,
  equal: true,
  fromJson: true,
  toJson: true,
  makeCollectionsUnmodifiable: false,
)
class TextItemModel with _$TextItemModel {
  const factory TextItemModel({
    @HiveField(0, defaultValue: EditorItemType.text)
    @JsonKey(name: 'type')
    @Default(EditorItemType.text)
    EditorItemType itemType,
    @HiveField(1)
    @Default('')
    @JsonKey(name: 'data', defaultValue: '')
    String data,
  }) = _TextItemModel;

  factory TextItemModel.fromJson(Map<String, dynamic> json) =>
      _$TextItemModelFromJson(json);
}
