// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextItemModel _$TextItemModelFromJson(Map<String, dynamic> json) {
  return _TextItemModel.fromJson(json);
}

/// @nodoc
mixin _$TextItemModel {
  @HiveField(0, defaultValue: EditorItemType.text)
  @JsonKey(name: 'type')
  EditorItemType get itemType => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'data', defaultValue: '')
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextItemModelCopyWith<TextItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextItemModelCopyWith<$Res> {
  factory $TextItemModelCopyWith(
          TextItemModel value, $Res Function(TextItemModel) then) =
      _$TextItemModelCopyWithImpl<$Res, TextItemModel>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: EditorItemType.text)
      @JsonKey(name: 'type')
          EditorItemType itemType,
      @HiveField(1)
      @JsonKey(name: 'data', defaultValue: '')
          String data});
}

/// @nodoc
class _$TextItemModelCopyWithImpl<$Res, $Val extends TextItemModel>
    implements $TextItemModelCopyWith<$Res> {
  _$TextItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemType = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as EditorItemType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextItemModelCopyWith<$Res>
    implements $TextItemModelCopyWith<$Res> {
  factory _$$_TextItemModelCopyWith(
          _$_TextItemModel value, $Res Function(_$_TextItemModel) then) =
      __$$_TextItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: EditorItemType.text)
      @JsonKey(name: 'type')
          EditorItemType itemType,
      @HiveField(1)
      @JsonKey(name: 'data', defaultValue: '')
          String data});
}

/// @nodoc
class __$$_TextItemModelCopyWithImpl<$Res>
    extends _$TextItemModelCopyWithImpl<$Res, _$_TextItemModel>
    implements _$$_TextItemModelCopyWith<$Res> {
  __$$_TextItemModelCopyWithImpl(
      _$_TextItemModel _value, $Res Function(_$_TextItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemType = null,
    Object? data = null,
  }) {
    return _then(_$_TextItemModel(
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as EditorItemType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextItemModel implements _TextItemModel {
  const _$_TextItemModel(
      {@HiveField(0, defaultValue: EditorItemType.text)
      @JsonKey(name: 'type')
          this.itemType = EditorItemType.text,
      @HiveField(1)
      @JsonKey(name: 'data', defaultValue: '')
          this.data = ''});

  factory _$_TextItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_TextItemModelFromJson(json);

  @override
  @HiveField(0, defaultValue: EditorItemType.text)
  @JsonKey(name: 'type')
  final EditorItemType itemType;
  @override
  @HiveField(1)
  @JsonKey(name: 'data', defaultValue: '')
  final String data;

  @override
  String toString() {
    return 'TextItemModel(itemType: $itemType, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextItemModel &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextItemModelCopyWith<_$_TextItemModel> get copyWith =>
      __$$_TextItemModelCopyWithImpl<_$_TextItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextItemModelToJson(
      this,
    );
  }
}

abstract class _TextItemModel implements TextItemModel {
  const factory _TextItemModel(
      {@HiveField(0, defaultValue: EditorItemType.text)
      @JsonKey(name: 'type')
          final EditorItemType itemType,
      @HiveField(1)
      @JsonKey(name: 'data', defaultValue: '')
          final String data}) = _$_TextItemModel;

  factory _TextItemModel.fromJson(Map<String, dynamic> json) =
      _$_TextItemModel.fromJson;

  @override
  @HiveField(0, defaultValue: EditorItemType.text)
  @JsonKey(name: 'type')
  EditorItemType get itemType;
  @override
  @HiveField(1)
  @JsonKey(name: 'data', defaultValue: '')
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_TextItemModelCopyWith<_$_TextItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
