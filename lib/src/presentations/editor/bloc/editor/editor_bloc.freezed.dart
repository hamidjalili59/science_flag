// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditorState {
  List<EditorItemList> get stackWidgetData =>
      throw _privateConstructorUsedError;
  int get selectPosition => throw _privateConstructorUsedError;
  List<EditorItemList> get stackWidgetList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EditorItemList> stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EditorItemList> stackWidgetData, int selectPosition,
            List<EditorItemList> stackWidgetList)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EditorItemList> stackWidgetData, int selectPosition,
            List<EditorItemList> stackWidgetList)?
        idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateCopyWith<EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res, EditorState>;
  @useResult
  $Res call(
      {List<EditorItemList> stackWidgetData,
      int selectPosition,
      List<EditorItemList> stackWidgetList});
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res, $Val extends EditorState>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackWidgetData = null,
    Object? selectPosition = null,
    Object? stackWidgetList = null,
  }) {
    return _then(_value.copyWith(
      stackWidgetData: null == stackWidgetData
          ? _value.stackWidgetData
          : stackWidgetData // ignore: cast_nullable_to_non_nullable
              as List<EditorItemList>,
      selectPosition: null == selectPosition
          ? _value.selectPosition
          : selectPosition // ignore: cast_nullable_to_non_nullable
              as int,
      stackWidgetList: null == stackWidgetList
          ? _value.stackWidgetList
          : stackWidgetList // ignore: cast_nullable_to_non_nullable
              as List<EditorItemList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $EditorStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EditorItemList> stackWidgetData,
      int selectPosition,
      List<EditorItemList> stackWidgetList});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackWidgetData = null,
    Object? selectPosition = null,
    Object? stackWidgetList = null,
  }) {
    return _then(_$_Idle(
      stackWidgetData: null == stackWidgetData
          ? _value._stackWidgetData
          : stackWidgetData // ignore: cast_nullable_to_non_nullable
              as List<EditorItemList>,
      selectPosition: null == selectPosition
          ? _value.selectPosition
          : selectPosition // ignore: cast_nullable_to_non_nullable
              as int,
      stackWidgetList: null == stackWidgetList
          ? _value._stackWidgetList
          : stackWidgetList // ignore: cast_nullable_to_non_nullable
              as List<EditorItemList>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {final List<EditorItemList> stackWidgetData = const [],
      this.selectPosition = 0,
      final List<EditorItemList> stackWidgetList = const []})
      : _stackWidgetData = stackWidgetData,
        _stackWidgetList = stackWidgetList;

  final List<EditorItemList> _stackWidgetData;
  @override
  @JsonKey()
  List<EditorItemList> get stackWidgetData {
    if (_stackWidgetData is EqualUnmodifiableListView) return _stackWidgetData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stackWidgetData);
  }

  @override
  @JsonKey()
  final int selectPosition;
  final List<EditorItemList> _stackWidgetList;
  @override
  @JsonKey()
  List<EditorItemList> get stackWidgetList {
    if (_stackWidgetList is EqualUnmodifiableListView) return _stackWidgetList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stackWidgetList);
  }

  @override
  String toString() {
    return 'EditorState.idle(stackWidgetData: $stackWidgetData, selectPosition: $selectPosition, stackWidgetList: $stackWidgetList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            const DeepCollectionEquality()
                .equals(other._stackWidgetData, _stackWidgetData) &&
            (identical(other.selectPosition, selectPosition) ||
                other.selectPosition == selectPosition) &&
            const DeepCollectionEquality()
                .equals(other._stackWidgetList, _stackWidgetList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stackWidgetData),
      selectPosition,
      const DeepCollectionEquality().hash(_stackWidgetList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EditorItemList> stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)
        idle,
  }) {
    return idle(stackWidgetData, selectPosition, stackWidgetList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EditorItemList> stackWidgetData, int selectPosition,
            List<EditorItemList> stackWidgetList)?
        idle,
  }) {
    return idle?.call(stackWidgetData, selectPosition, stackWidgetList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EditorItemList> stackWidgetData, int selectPosition,
            List<EditorItemList> stackWidgetList)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(stackWidgetData, selectPosition, stackWidgetList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements EditorState {
  const factory _Idle(
      {final List<EditorItemList> stackWidgetData,
      final int selectPosition,
      final List<EditorItemList> stackWidgetList}) = _$_Idle;

  @override
  List<EditorItemList> get stackWidgetData;
  @override
  int get selectPosition;
  @override
  List<EditorItemList> get stackWidgetList;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorEventCopyWith<$Res> {
  factory $EditorEventCopyWith(
          EditorEvent value, $Res Function(EditorEvent) then) =
      _$EditorEventCopyWithImpl<$Res, EditorEvent>;
}

/// @nodoc
class _$EditorEventCopyWithImpl<$Res, $Val extends EditorEvent>
    implements $EditorEventCopyWith<$Res> {
  _$EditorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddToolCopyWith<$Res> {
  factory _$$_AddToolCopyWith(
          _$_AddTool value, $Res Function(_$_AddTool) then) =
      __$$_AddToolCopyWithImpl<$Res>;
  @useResult
  $Res call({String widgetType, int position});
}

/// @nodoc
class __$$_AddToolCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_AddTool>
    implements _$$_AddToolCopyWith<$Res> {
  __$$_AddToolCopyWithImpl(_$_AddTool _value, $Res Function(_$_AddTool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetType = null,
    Object? position = null,
  }) {
    return _then(_$_AddTool(
      null == widgetType
          ? _value.widgetType
          : widgetType // ignore: cast_nullable_to_non_nullable
              as String,
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddTool implements _AddTool {
  const _$_AddTool(this.widgetType, this.position);

  @override
  final String widgetType;
  @override
  final int position;

  @override
  String toString() {
    return 'EditorEvent.addTool(widgetType: $widgetType, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTool &&
            (identical(other.widgetType, widgetType) ||
                other.widgetType == widgetType) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToolCopyWith<_$_AddTool> get copyWith =>
      __$$_AddToolCopyWithImpl<_$_AddTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return addTool(widgetType, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return addTool?.call(widgetType, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (addTool != null) {
      return addTool(widgetType, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return addTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return addTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (addTool != null) {
      return addTool(this);
    }
    return orElse();
  }
}

abstract class _AddTool implements EditorEvent {
  const factory _AddTool(final String widgetType, final int position) =
      _$_AddTool;

  String get widgetType;
  int get position;
  @JsonKey(ignore: true)
  _$$_AddToolCopyWith<_$_AddTool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddBlocToolCopyWith<$Res> {
  factory _$$_AddBlocToolCopyWith(
          _$_AddBlocTool value, $Res Function(_$_AddBlocTool) then) =
      __$$_AddBlocToolCopyWithImpl<$Res>;
  @useResult
  $Res call({EditorItemLayoutType type});
}

/// @nodoc
class __$$_AddBlocToolCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_AddBlocTool>
    implements _$$_AddBlocToolCopyWith<$Res> {
  __$$_AddBlocToolCopyWithImpl(
      _$_AddBlocTool _value, $Res Function(_$_AddBlocTool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_AddBlocTool(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EditorItemLayoutType,
    ));
  }
}

/// @nodoc

class _$_AddBlocTool implements _AddBlocTool {
  const _$_AddBlocTool(this.type);

// EditorItemList stackWidget,
  @override
  final EditorItemLayoutType type;

  @override
  String toString() {
    return 'EditorEvent.addBlocTool(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBlocTool &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBlocToolCopyWith<_$_AddBlocTool> get copyWith =>
      __$$_AddBlocToolCopyWithImpl<_$_AddBlocTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return addBlocTool(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return addBlocTool?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (addBlocTool != null) {
      return addBlocTool(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return addBlocTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return addBlocTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (addBlocTool != null) {
      return addBlocTool(this);
    }
    return orElse();
  }
}

abstract class _AddBlocTool implements EditorEvent {
  const factory _AddBlocTool(final EditorItemLayoutType type) = _$_AddBlocTool;

// EditorItemList stackWidget,
  EditorItemLayoutType get type;
  @JsonKey(ignore: true)
  _$$_AddBlocToolCopyWith<_$_AddBlocTool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveToolCopyWith<$Res> {
  factory _$$_RemoveToolCopyWith(
          _$_RemoveTool value, $Res Function(_$_RemoveTool) then) =
      __$$_RemoveToolCopyWithImpl<$Res>;
  @useResult
  $Res call({String widgetType, String tag});
}

/// @nodoc
class __$$_RemoveToolCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_RemoveTool>
    implements _$$_RemoveToolCopyWith<$Res> {
  __$$_RemoveToolCopyWithImpl(
      _$_RemoveTool _value, $Res Function(_$_RemoveTool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetType = null,
    Object? tag = null,
  }) {
    return _then(_$_RemoveTool(
      null == widgetType
          ? _value.widgetType
          : widgetType // ignore: cast_nullable_to_non_nullable
              as String,
      null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveTool implements _RemoveTool {
  const _$_RemoveTool(this.widgetType, this.tag);

  @override
  final String widgetType;
  @override
  final String tag;

  @override
  String toString() {
    return 'EditorEvent.removeTool(widgetType: $widgetType, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveTool &&
            (identical(other.widgetType, widgetType) ||
                other.widgetType == widgetType) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveToolCopyWith<_$_RemoveTool> get copyWith =>
      __$$_RemoveToolCopyWithImpl<_$_RemoveTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return removeTool(widgetType, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return removeTool?.call(widgetType, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (removeTool != null) {
      return removeTool(widgetType, tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return removeTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return removeTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (removeTool != null) {
      return removeTool(this);
    }
    return orElse();
  }
}

abstract class _RemoveTool implements EditorEvent {
  const factory _RemoveTool(final String widgetType, final String tag) =
      _$_RemoveTool;

  String get widgetType;
  String get tag;
  @JsonKey(ignore: true)
  _$$_RemoveToolCopyWith<_$_RemoveTool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwitchPositionCopyWith<$Res> {
  factory _$$_SwitchPositionCopyWith(
          _$_SwitchPosition value, $Res Function(_$_SwitchPosition) then) =
      __$$_SwitchPositionCopyWithImpl<$Res>;
  @useResult
  $Res call({int position, String widgetType});
}

/// @nodoc
class __$$_SwitchPositionCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_SwitchPosition>
    implements _$$_SwitchPositionCopyWith<$Res> {
  __$$_SwitchPositionCopyWithImpl(
      _$_SwitchPosition _value, $Res Function(_$_SwitchPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? widgetType = null,
  }) {
    return _then(_$_SwitchPosition(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      null == widgetType
          ? _value.widgetType
          : widgetType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SwitchPosition implements _SwitchPosition {
  const _$_SwitchPosition(this.position, this.widgetType);

  @override
  final int position;
  @override
  final String widgetType;

  @override
  String toString() {
    return 'EditorEvent.switchPosition(position: $position, widgetType: $widgetType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchPosition &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.widgetType, widgetType) ||
                other.widgetType == widgetType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, widgetType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchPositionCopyWith<_$_SwitchPosition> get copyWith =>
      __$$_SwitchPositionCopyWithImpl<_$_SwitchPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return switchPosition(position, widgetType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return switchPosition?.call(position, widgetType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (switchPosition != null) {
      return switchPosition(position, widgetType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return switchPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return switchPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (switchPosition != null) {
      return switchPosition(this);
    }
    return orElse();
  }
}

abstract class _SwitchPosition implements EditorEvent {
  const factory _SwitchPosition(final int position, final String widgetType) =
      _$_SwitchPosition;

  int get position;
  String get widgetType;
  @JsonKey(ignore: true)
  _$$_SwitchPositionCopyWith<_$_SwitchPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecordAudioCopyWith<$Res> {
  factory _$$_RecordAudioCopyWith(
          _$_RecordAudio value, $Res Function(_$_RecordAudio) then) =
      __$$_RecordAudioCopyWithImpl<$Res>;
  @useResult
  $Res call({int position, EditorItemList stackWidget});
}

/// @nodoc
class __$$_RecordAudioCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_RecordAudio>
    implements _$$_RecordAudioCopyWith<$Res> {
  __$$_RecordAudioCopyWithImpl(
      _$_RecordAudio _value, $Res Function(_$_RecordAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? stackWidget = null,
  }) {
    return _then(_$_RecordAudio(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      null == stackWidget
          ? _value.stackWidget
          : stackWidget // ignore: cast_nullable_to_non_nullable
              as EditorItemList,
    ));
  }
}

/// @nodoc

class _$_RecordAudio implements _RecordAudio {
  const _$_RecordAudio(this.position, this.stackWidget);

  @override
  final int position;
  @override
  final EditorItemList stackWidget;

  @override
  String toString() {
    return 'EditorEvent.recordAudio(position: $position, stackWidget: $stackWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordAudio &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.stackWidget, stackWidget) ||
                other.stackWidget == stackWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, stackWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordAudioCopyWith<_$_RecordAudio> get copyWith =>
      __$$_RecordAudioCopyWithImpl<_$_RecordAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return recordAudio(position, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return recordAudio?.call(position, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (recordAudio != null) {
      return recordAudio(position, stackWidget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return recordAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return recordAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (recordAudio != null) {
      return recordAudio(this);
    }
    return orElse();
  }
}

abstract class _RecordAudio implements EditorEvent {
  const factory _RecordAudio(
      final int position, final EditorItemList stackWidget) = _$_RecordAudio;

  int get position;
  EditorItemList get stackWidget;
  @JsonKey(ignore: true)
  _$$_RecordAudioCopyWith<_$_RecordAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayAudioCopyWith<$Res> {
  factory _$$_PlayAudioCopyWith(
          _$_PlayAudio value, $Res Function(_$_PlayAudio) then) =
      __$$_PlayAudioCopyWithImpl<$Res>;
  @useResult
  $Res call({int position, EditorItemList stackWidget});
}

/// @nodoc
class __$$_PlayAudioCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_PlayAudio>
    implements _$$_PlayAudioCopyWith<$Res> {
  __$$_PlayAudioCopyWithImpl(
      _$_PlayAudio _value, $Res Function(_$_PlayAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? stackWidget = null,
  }) {
    return _then(_$_PlayAudio(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      null == stackWidget
          ? _value.stackWidget
          : stackWidget // ignore: cast_nullable_to_non_nullable
              as EditorItemList,
    ));
  }
}

/// @nodoc

class _$_PlayAudio implements _PlayAudio {
  const _$_PlayAudio(this.position, this.stackWidget);

  @override
  final int position;
  @override
  final EditorItemList stackWidget;

  @override
  String toString() {
    return 'EditorEvent.playAudio(position: $position, stackWidget: $stackWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayAudio &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.stackWidget, stackWidget) ||
                other.stackWidget == stackWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, stackWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayAudioCopyWith<_$_PlayAudio> get copyWith =>
      __$$_PlayAudioCopyWithImpl<_$_PlayAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return playAudio(position, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return playAudio?.call(position, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(position, stackWidget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudio implements EditorEvent {
  const factory _PlayAudio(
      final int position, final EditorItemList stackWidget) = _$_PlayAudio;

  int get position;
  EditorItemList get stackWidget;
  @JsonKey(ignore: true)
  _$$_PlayAudioCopyWith<_$_PlayAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateToolCopyWith<$Res> {
  factory _$$_UpdateToolCopyWith(
          _$_UpdateTool value, $Res Function(_$_UpdateTool) then) =
      __$$_UpdateToolCopyWithImpl<$Res>;
  @useResult
  $Res call({String widgetType, EditorItemList stackWidget});
}

/// @nodoc
class __$$_UpdateToolCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_UpdateTool>
    implements _$$_UpdateToolCopyWith<$Res> {
  __$$_UpdateToolCopyWithImpl(
      _$_UpdateTool _value, $Res Function(_$_UpdateTool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetType = null,
    Object? stackWidget = null,
  }) {
    return _then(_$_UpdateTool(
      null == widgetType
          ? _value.widgetType
          : widgetType // ignore: cast_nullable_to_non_nullable
              as String,
      null == stackWidget
          ? _value.stackWidget
          : stackWidget // ignore: cast_nullable_to_non_nullable
              as EditorItemList,
    ));
  }
}

/// @nodoc

class _$_UpdateTool implements _UpdateTool {
  const _$_UpdateTool(this.widgetType, this.stackWidget);

  @override
  final String widgetType;
  @override
  final EditorItemList stackWidget;

  @override
  String toString() {
    return 'EditorEvent.updateTool(widgetType: $widgetType, stackWidget: $stackWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTool &&
            (identical(other.widgetType, widgetType) ||
                other.widgetType == widgetType) &&
            (identical(other.stackWidget, stackWidget) ||
                other.stackWidget == stackWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetType, stackWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateToolCopyWith<_$_UpdateTool> get copyWith =>
      __$$_UpdateToolCopyWithImpl<_$_UpdateTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position) addTool,
    required TResult Function(EditorItemLayoutType type) addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return updateTool(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position)? addTool,
    TResult? Function(EditorItemLayoutType type)? addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return updateTool?.call(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position)? addTool,
    TResult Function(EditorItemLayoutType type)? addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (updateTool != null) {
      return updateTool(widgetType, stackWidget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_AddBlocTool value) addBlocTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return updateTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_AddBlocTool value)? addBlocTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return updateTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_AddBlocTool value)? addBlocTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (updateTool != null) {
      return updateTool(this);
    }
    return orElse();
  }
}

abstract class _UpdateTool implements EditorEvent {
  const factory _UpdateTool(
          final String widgetType, final EditorItemList stackWidget) =
      _$_UpdateTool;

  String get widgetType;
  EditorItemList get stackWidget;
  @JsonKey(ignore: true)
  _$$_UpdateToolCopyWith<_$_UpdateTool> get copyWith =>
      throw _privateConstructorUsedError;
}
