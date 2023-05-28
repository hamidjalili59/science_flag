// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_item_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotesItemListModel _$NotesItemListModelFromJson(Map<String, dynamic> json) {
  return _NotesItemListModel.fromJson(json);
}

/// @nodoc
mixin _$NotesItemListModel {
  @HiveField(0, defaultValue: '')
  @JsonKey(name: 'icon')
  String get icon => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'owner')
  String get owner => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: false)
  @JsonKey(name: 'doHisHavePractice')
  bool get doHisHavePractice => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: [])
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get data => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: '')
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesItemListModelCopyWith<NotesItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesItemListModelCopyWith<$Res> {
  factory $NotesItemListModelCopyWith(
          NotesItemListModel value, $Res Function(NotesItemListModel) then) =
      _$NotesItemListModelCopyWithImpl<$Res, NotesItemListModel>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '')
      @JsonKey(name: 'icon')
          String icon,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'name')
          String name,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'owner')
          String owner,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'category')
          String category,
      @HiveField(4, defaultValue: false)
      @JsonKey(name: 'doHisHavePractice')
          bool doHisHavePractice,
      @HiveField(5, defaultValue: [])
      @JsonKey(name: 'data')
          List<Map<String, dynamic>> data,
      @HiveField(6, defaultValue: '')
      @JsonKey(name: 'id')
          String id});
}

/// @nodoc
class _$NotesItemListModelCopyWithImpl<$Res, $Val extends NotesItemListModel>
    implements $NotesItemListModelCopyWith<$Res> {
  _$NotesItemListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? owner = null,
    Object? category = null,
    Object? doHisHavePractice = null,
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      doHisHavePractice: null == doHisHavePractice
          ? _value.doHisHavePractice
          : doHisHavePractice // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotesItemListModelCopyWith<$Res>
    implements $NotesItemListModelCopyWith<$Res> {
  factory _$$_NotesItemListModelCopyWith(_$_NotesItemListModel value,
          $Res Function(_$_NotesItemListModel) then) =
      __$$_NotesItemListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '')
      @JsonKey(name: 'icon')
          String icon,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'name')
          String name,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'owner')
          String owner,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'category')
          String category,
      @HiveField(4, defaultValue: false)
      @JsonKey(name: 'doHisHavePractice')
          bool doHisHavePractice,
      @HiveField(5, defaultValue: [])
      @JsonKey(name: 'data')
          List<Map<String, dynamic>> data,
      @HiveField(6, defaultValue: '')
      @JsonKey(name: 'id')
          String id});
}

/// @nodoc
class __$$_NotesItemListModelCopyWithImpl<$Res>
    extends _$NotesItemListModelCopyWithImpl<$Res, _$_NotesItemListModel>
    implements _$$_NotesItemListModelCopyWith<$Res> {
  __$$_NotesItemListModelCopyWithImpl(
      _$_NotesItemListModel _value, $Res Function(_$_NotesItemListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? owner = null,
    Object? category = null,
    Object? doHisHavePractice = null,
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$_NotesItemListModel(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      doHisHavePractice: null == doHisHavePractice
          ? _value.doHisHavePractice
          : doHisHavePractice // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_NotesItemListModel implements _NotesItemListModel {
  _$_NotesItemListModel(
      {@HiveField(0, defaultValue: '')
      @JsonKey(name: 'icon')
          this.icon = '',
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'name')
          this.name = '',
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'owner')
          this.owner = '',
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'category')
          this.category = '',
      @HiveField(4, defaultValue: false)
      @JsonKey(name: 'doHisHavePractice')
          this.doHisHavePractice = false,
      @HiveField(5, defaultValue: [])
      @JsonKey(name: 'data')
          this.data = const [],
      @HiveField(6, defaultValue: '')
      @JsonKey(name: 'id')
          this.id = ''});

  factory _$_NotesItemListModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotesItemListModelFromJson(json);

  @override
  @HiveField(0, defaultValue: '')
  @JsonKey(name: 'icon')
  final String icon;
  @override
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'name')
  final String name;
  @override
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'owner')
  final String owner;
  @override
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'category')
  final String category;
  @override
  @HiveField(4, defaultValue: false)
  @JsonKey(name: 'doHisHavePractice')
  final bool doHisHavePractice;
  @override
  @HiveField(5, defaultValue: [])
  @JsonKey(name: 'data')
  final List<Map<String, dynamic>> data;
  @override
  @HiveField(6, defaultValue: '')
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'NotesItemListModel(icon: $icon, name: $name, owner: $owner, category: $category, doHisHavePractice: $doHisHavePractice, data: $data, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesItemListModel &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.doHisHavePractice, doHisHavePractice) ||
                other.doHisHavePractice == doHisHavePractice) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, name, owner, category,
      doHisHavePractice, const DeepCollectionEquality().hash(data), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotesItemListModelCopyWith<_$_NotesItemListModel> get copyWith =>
      __$$_NotesItemListModelCopyWithImpl<_$_NotesItemListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotesItemListModelToJson(
      this,
    );
  }
}

abstract class _NotesItemListModel implements NotesItemListModel {
  factory _NotesItemListModel(
      {@HiveField(0, defaultValue: '')
      @JsonKey(name: 'icon')
          final String icon,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'name')
          final String name,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'owner')
          final String owner,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'category')
          final String category,
      @HiveField(4, defaultValue: false)
      @JsonKey(name: 'doHisHavePractice')
          final bool doHisHavePractice,
      @HiveField(5, defaultValue: [])
      @JsonKey(name: 'data')
          final List<Map<String, dynamic>> data,
      @HiveField(6, defaultValue: '')
      @JsonKey(name: 'id')
          final String id}) = _$_NotesItemListModel;

  factory _NotesItemListModel.fromJson(Map<String, dynamic> json) =
      _$_NotesItemListModel.fromJson;

  @override
  @HiveField(0, defaultValue: '')
  @JsonKey(name: 'icon')
  String get icon;
  @override
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'name')
  String get name;
  @override
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'owner')
  String get owner;
  @override
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'category')
  String get category;
  @override
  @HiveField(4, defaultValue: false)
  @JsonKey(name: 'doHisHavePractice')
  bool get doHisHavePractice;
  @override
  @HiveField(5, defaultValue: [])
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get data;
  @override
  @HiveField(6, defaultValue: '')
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_NotesItemListModelCopyWith<_$_NotesItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
