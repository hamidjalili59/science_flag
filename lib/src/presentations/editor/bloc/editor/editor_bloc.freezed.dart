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
    required TResult Function(
            bool isLoading, Map<String, dynamic> stackWidgetData)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
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
  $Res call({bool isLoading, Map<String, dynamic> stackWidgetData});
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
    Object? stackWidgetData = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      stackWidgetData: null == stackWidgetData
          ? _value._stackWidgetData
          : stackWidgetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false,
      final Map<String, dynamic> stackWidgetData = const {}})
      : _stackWidgetData = stackWidgetData;

  @override
  @JsonKey()
  final bool isLoading;
  final Map<String, dynamic> _stackWidgetData;
  @override
  @JsonKey()
  Map<String, dynamic> get stackWidgetData {
    if (_stackWidgetData is EqualUnmodifiableMapView) return _stackWidgetData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stackWidgetData);
  }

  @override
  String toString() {
    return 'EditorState.idle(isLoading: $isLoading, stackWidgetData: $stackWidgetData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._stackWidgetData, _stackWidgetData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_stackWidgetData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, Map<String, dynamic> stackWidgetData)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) {
    return idle(isLoading, stackWidgetData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) {
    return idle?.call(isLoading, stackWidgetData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
        idle,
    TResult Function()? sucess,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, stackWidgetData);
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
      final Map<String, dynamic> stackWidgetData}) = _$_Idle;

  bool get isLoading;
  Map<String, dynamic> get stackWidgetData;
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
    required TResult Function(
            bool isLoading, Map<String, dynamic> stackWidgetData)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
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
    required TResult Function(
            bool isLoading, Map<String, dynamic> stackWidgetData)
        idle,
    required TResult Function() sucess,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
        idle,
    TResult? Function()? sucess,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, dynamic> stackWidgetData)?
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
    required TResult Function() refresh,
    required TResult Function(
            String widgetType, Map<String, dynamic> stackWidget)
        addTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)
        updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_UpdateTool value) updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_UpdateTool value)? updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
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
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'EditorEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(
            String widgetType, Map<String, dynamic> stackWidget)
        addTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)
        updateTool,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements EditorEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_AddToolCopyWith<$Res> {
  factory _$$_AddToolCopyWith(
          _$_AddTool value, $Res Function(_$_AddTool) then) =
      __$$_AddToolCopyWithImpl<$Res>;
  @useResult
  $Res call({String widgetType, Map<String, dynamic> stackWidget});
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
          ? _value._stackWidget
          : stackWidget // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_AddTool implements _AddTool {
  const _$_AddTool(this.widgetType, final Map<String, dynamic> stackWidget)
      : _stackWidget = stackWidget;

  @override
  final String widgetType;
  final Map<String, dynamic> _stackWidget;
  @override
  Map<String, dynamic> get stackWidget {
    if (_stackWidget is EqualUnmodifiableMapView) return _stackWidget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stackWidget);
  }

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
            const DeepCollectionEquality()
                .equals(other._stackWidget, _stackWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetType,
      const DeepCollectionEquality().hash(_stackWidget));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToolCopyWith<_$_AddTool> get copyWith =>
      __$$_AddToolCopyWithImpl<_$_AddTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(
            String widgetType, Map<String, dynamic> stackWidget)
        addTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)
        updateTool,
  }) {
    return addTool(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
  }) {
    return addTool?.call(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
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
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return addTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return addTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
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
          final String widgetType, final Map<String, dynamic> stackWidget) =
      _$_AddTool;

  String get widgetType;
  Map<String, dynamic> get stackWidget;
  @JsonKey(ignore: true)
  _$$_AddToolCopyWith<_$_AddTool> get copyWith =>
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
    required TResult Function() refresh,
    required TResult Function(
            String widgetType, Map<String, dynamic> stackWidget)
        addTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)
        updateTool,
  }) {
    return removeTool(widgetType, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
  }) {
    return removeTool?.call(widgetType, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
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
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return removeTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return removeTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
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
abstract class _$$_UpdateToolCopyWith<$Res> {
  factory _$$_UpdateToolCopyWith(
          _$_UpdateTool value, $Res Function(_$_UpdateTool) then) =
      __$$_UpdateToolCopyWithImpl<$Res>;
  @useResult
  $Res call({String widgetType, String tag, Map<String, dynamic> config});
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
    Object? tag = null,
    Object? config = null,
  }) {
    return _then(_$_UpdateTool(
      null == widgetType
          ? _value.widgetType
          : widgetType // ignore: cast_nullable_to_non_nullable
              as String,
      null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      null == config
          ? _value._config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_UpdateTool implements _UpdateTool {
  const _$_UpdateTool(
      this.widgetType, this.tag, final Map<String, dynamic> config)
      : _config = config;

  @override
  final String widgetType;
  @override
  final String tag;
  final Map<String, dynamic> _config;
  @override
  Map<String, dynamic> get config {
    if (_config is EqualUnmodifiableMapView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_config);
  }

  @override
  String toString() {
    return 'EditorEvent.updateTool(widgetType: $widgetType, tag: $tag, config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTool &&
            (identical(other.widgetType, widgetType) ||
                other.widgetType == widgetType) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality().equals(other._config, _config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetType, tag,
      const DeepCollectionEquality().hash(_config));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateToolCopyWith<_$_UpdateTool> get copyWith =>
      __$$_UpdateToolCopyWithImpl<_$_UpdateTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(
            String widgetType, Map<String, dynamic> stackWidget)
        addTool,
    required TResult Function(String widgetType, String tag) removeTool,
    required TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)
        updateTool,
  }) {
    return updateTool(widgetType, tag, config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult? Function(String widgetType, String tag)? removeTool,
    TResult? Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
  }) {
    return updateTool?.call(widgetType, tag, config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String widgetType, Map<String, dynamic> stackWidget)?
        addTool,
    TResult Function(String widgetType, String tag)? removeTool,
    TResult Function(
            String widgetType, String tag, Map<String, dynamic> config)?
        updateTool,
    required TResult orElse(),
  }) {
    if (updateTool != null) {
      return updateTool(widgetType, tag, config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return updateTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return updateTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
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
  const factory _UpdateTool(final String widgetType, final String tag,
      final Map<String, dynamic> config) = _$_UpdateTool;

  String get widgetType;
  String get tag;
  Map<String, dynamic> get config;
  @JsonKey(ignore: true)
  _$$_UpdateToolCopyWith<_$_UpdateTool> get copyWith =>
      throw _privateConstructorUsedError;
}
