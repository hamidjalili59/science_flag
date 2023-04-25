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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult Function()? sucess,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Sucess value)? sucess,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res, EditorState>;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res, $Val extends EditorState>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      EditorItemList? stackWidgetData,
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
    Object? isLoading = null,
    Object? stackWidgetData = freezed,
    Object? selectPosition = null,
    Object? stackWidgetList = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      stackWidgetData: freezed == stackWidgetData
          ? _value.stackWidgetData
          : stackWidgetData // ignore: cast_nullable_to_non_nullable
              as EditorItemList?,
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
      {this.isLoading = false,
      this.stackWidgetData,
      this.selectPosition = 0,
      final List<EditorItemList> stackWidgetList = const []})
      : _stackWidgetList = stackWidgetList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final EditorItemList? stackWidgetData;
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
    return 'EditorState.idle(isLoading: $isLoading, stackWidgetData: $stackWidgetData, selectPosition: $selectPosition, stackWidgetList: $stackWidgetList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.stackWidgetData, stackWidgetData) ||
                other.stackWidgetData == stackWidgetData) &&
            (identical(other.selectPosition, selectPosition) ||
                other.selectPosition == selectPosition) &&
            const DeepCollectionEquality()
                .equals(other._stackWidgetList, _stackWidgetList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, stackWidgetData,
      selectPosition, const DeepCollectionEquality().hash(_stackWidgetList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) {
    return idle(isLoading, stackWidgetData, selectPosition, stackWidgetList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) {
    return idle?.call(
        isLoading, stackWidgetData, selectPosition, stackWidgetList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult Function()? sucess,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, stackWidgetData, selectPosition, stackWidgetList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_Failed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Sucess value)? sucess,
    TResult? Function(_Failed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_Failed value)? failed,
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
      {final bool isLoading,
      final EditorItemList? stackWidgetData,
      final int selectPosition,
      final List<EditorItemList> stackWidgetList}) = _$_Idle;

  bool get isLoading;
  EditorItemList? get stackWidgetData;
  int get selectPosition;
  List<EditorItemList> get stackWidgetList;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SucessCopyWith<$Res> {
  factory _$$_SucessCopyWith(_$_Sucess value, $Res Function(_$_Sucess) then) =
      __$$_SucessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SucessCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$_Sucess>
    implements _$$_SucessCopyWith<$Res> {
  __$$_SucessCopyWithImpl(_$_Sucess _value, $Res Function(_$_Sucess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Sucess implements _Sucess {
  const _$_Sucess();

  @override
  String toString() {
    return 'EditorState.sucess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Sucess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult Function()? sucess,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_Failed value) failed,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Sucess value)? sucess,
    TResult? Function(_Failed value)? failed,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _Sucess implements EditorState {
  const factory _Sucess() = _$_Sucess;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'EditorState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, EditorItemList? stackWidgetData,
            int selectPosition, List<EditorItemList> stackWidgetList)?
        idle,
    TResult Function()? sucess,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Sucess value)? sucess,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements EditorState {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
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
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
  $Res call({String widgetType, EditorItemList stackWidget});
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
    Object? stackWidget = null,
  }) {
    return _then(_$_AddTool(
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

class _$_AddTool implements _AddTool {
  const _$_AddTool(this.widgetType, this.stackWidget);

  @override
  final String widgetType;
  @override
  final EditorItemList stackWidget;

  @override
  String toString() {
    return 'EditorEvent.addTool(widgetType: $widgetType, stackWidget: $stackWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTool &&
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
  _$$_AddToolCopyWith<_$_AddTool> get copyWith =>
      __$$_AddToolCopyWithImpl<_$_AddTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return addTool(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return addTool?.call(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (addTool != null) {
      return addTool(widgetType, stackWidget);
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
  const factory _AddTool(
      final String widgetType, final EditorItemList stackWidget) = _$_AddTool;

  String get widgetType;
  EditorItemList get stackWidget;
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
  $Res call({EditorItemList stackWidget, EditorItemLayoutType type});
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
    Object? stackWidget = null,
    Object? type = null,
  }) {
    return _then(_$_AddBlocTool(
      null == stackWidget
          ? _value.stackWidget
          : stackWidget // ignore: cast_nullable_to_non_nullable
              as EditorItemList,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EditorItemLayoutType,
    ));
  }
}

/// @nodoc

class _$_AddBlocTool implements _AddBlocTool {
  const _$_AddBlocTool(this.stackWidget, this.type);

  @override
  final EditorItemList stackWidget;
  @override
  final EditorItemLayoutType type;

  @override
  String toString() {
    return 'EditorEvent.addBlocTool(stackWidget: $stackWidget, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBlocTool &&
            (identical(other.stackWidget, stackWidget) ||
                other.stackWidget == stackWidget) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackWidget, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBlocToolCopyWith<_$_AddBlocTool> get copyWith =>
      __$$_AddBlocToolCopyWithImpl<_$_AddBlocTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(int position, String widgetType) switchPosition,
    required TResult Function(int position, EditorItemList stackWidget)
        recordAudio,
    required TResult Function(int position, EditorItemList stackWidget)
        playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return addBlocTool(stackWidget, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(int position, String widgetType)? switchPosition,
    TResult? Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult? Function(int position, EditorItemList stackWidget)? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return addBlocTool?.call(stackWidget, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(int position, String widgetType)? switchPosition,
    TResult Function(int position, EditorItemList stackWidget)? recordAudio,
    TResult Function(int position, EditorItemList stackWidget)? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (addBlocTool != null) {
      return addBlocTool(stackWidget, type);
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
  const factory _AddBlocTool(
          final EditorItemList stackWidget, final EditorItemLayoutType type) =
      _$_AddBlocTool;

  EditorItemList get stackWidget;
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
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
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
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
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
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
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
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
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
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    required TResult Function(String widgetType, EditorItemList stackWidget)
        addTool,
    required TResult Function(
            EditorItemList stackWidget, EditorItemLayoutType type)
        addBlocTool,
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
    TResult? Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult? Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
    TResult Function(String widgetType, EditorItemList stackWidget)? addTool,
    TResult Function(EditorItemList stackWidget, EditorItemLayoutType type)?
        addBlocTool,
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
