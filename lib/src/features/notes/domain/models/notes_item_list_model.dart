// @HiveType(typeId: 1)
// @JsonSerializable()
// class NotesItemListModel {
//   @HiveField(0, defaultValue: 'none')
//   final String? icon;
//   @HiveField(1, defaultValue: 'unknown')
//   final String? name;
//   @HiveField(2, defaultValue: 'self')
//   final String? owner;
//   @HiveField(3, defaultValue: 'unknown')
//   final String? category;
//   @HiveField(4, defaultValue: false)
//   final bool? doHisHavePractice;
//   @HiveField(5, defaultValue: '')
//   final String? id;

//   NotesItemListModel(
//     this.icon,
//     this.name,
//     this.owner,
//     this.category,
//     this.doHisHavePractice,
//     this.id,
//   );

//   factory NotesItemListModel.fromJson(Map<String, dynamic> json) =>
//       _$NotesItemListModelFromJson(json);

//   Map<String, dynamic> toJson() => _$NotesItemListModelToJson(this);
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notes_item_list_model.freezed.dart';
part 'notes_item_list_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)
class NotesItemListModel with _$NotesItemListModel {
  ///adsasd
  @HiveType(typeId: 1)
  factory NotesItemListModel({
    @HiveField(0, defaultValue: '')
    @JsonKey(name: 'icon')
    @Default('')
    String icon,
    @HiveField(1, defaultValue: '')
    @JsonKey(name: 'name')
    @Default('')
    String name,
    @HiveField(2, defaultValue: '')
    @JsonKey(name: 'owner')
    @Default('')
    String owner,
    @HiveField(3, defaultValue: '')
    @JsonKey(name: 'category')
    @Default('')
    String category,
    @HiveField(4, defaultValue: false)
    @JsonKey(name: 'doHisHavePractice')
    @Default(false)
    bool doHisHavePractice,
    @HiveField(5, defaultValue: [])
    @JsonKey(name: 'data')
    @Default([])
    List<Map<String, dynamic>> data,
    @HiveField(6, defaultValue: '') @JsonKey(name: 'id') @Default('') String id,
  }) = _NotesItemListModel;

  ///das
  factory NotesItemListModel.fromJson(Map<String, Object?> json) =>
      _$NotesItemListModelFromJson(json);
}
