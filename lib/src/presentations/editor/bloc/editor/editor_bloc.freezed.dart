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
mixin _$EditorPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get documentData =>
      throw _privateConstructorUsedError;
  int get selectPosition => throw _privateConstructorUsedError;
  FleatherController? get controller => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            List<Map<String, dynamic>> documentData,
            int selectPosition,
            FleatherController? controller)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Map<String, dynamic>> documentData,
            int selectPosition, FleatherController? controller)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Map<String, dynamic>> documentData,
            int selectPosition, FleatherController? controller)?
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
  $EditorPageStateCopyWith<EditorPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorPageStateCopyWith<$Res> {
  factory $EditorPageStateCopyWith(
          EditorPageState value, $Res Function(EditorPageState) then) =
      _$EditorPageStateCopyWithImpl<$Res, EditorPageState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Map<String, dynamic>> documentData,
      int selectPosition,
      FleatherController? controller});
}

/// @nodoc
class _$EditorPageStateCopyWithImpl<$Res, $Val extends EditorPageState>
    implements $EditorPageStateCopyWith<$Res> {
  _$EditorPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? documentData = null,
    Object? selectPosition = null,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      documentData: null == documentData
          ? _value.documentData
          : documentData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      selectPosition: null == selectPosition
          ? _value.selectPosition
          : selectPosition // ignore: cast_nullable_to_non_nullable
              as int,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as FleatherController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $EditorPageStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Map<String, dynamic>> documentData,
      int selectPosition,
      FleatherController? controller});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$EditorPageStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? documentData = null,
    Object? selectPosition = null,
    Object? controller = freezed,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      documentData: null == documentData
          ? _value._documentData
          : documentData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      selectPosition: null == selectPosition
          ? _value.selectPosition
          : selectPosition // ignore: cast_nullable_to_non_nullable
              as int,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as FleatherController?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false,
      final List<Map<String, dynamic>> documentData = const [],
      this.selectPosition = 0,
      this.controller})
      : _documentData = documentData;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Map<String, dynamic>> _documentData;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get documentData {
    if (_documentData is EqualUnmodifiableListView) return _documentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentData);
  }

  @override
  @JsonKey()
  final int selectPosition;
  @override
  final FleatherController? controller;

  @override
  String toString() {
    return 'EditorPageState.idle(isLoading: $isLoading, documentData: $documentData, selectPosition: $selectPosition, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._documentData, _documentData) &&
            (identical(other.selectPosition, selectPosition) ||
                other.selectPosition == selectPosition) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_documentData),
      selectPosition,
      controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            List<Map<String, dynamic>> documentData,
            int selectPosition,
            FleatherController? controller)
        idle,
  }) {
    return idle(isLoading, documentData, selectPosition, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Map<String, dynamic>> documentData,
            int selectPosition, FleatherController? controller)?
        idle,
  }) {
    return idle?.call(isLoading, documentData, selectPosition, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Map<String, dynamic>> documentData,
            int selectPosition, FleatherController? controller)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, documentData, selectPosition, controller);
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

abstract class _Idle implements EditorPageState {
  const factory _Idle(
      {final bool isLoading,
      final List<Map<String, dynamic>> documentData,
      final int selectPosition,
      final FleatherController? controller}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Map<String, dynamic>> get documentData;
  @override
  int get selectPosition;
  @override
  FleatherController? get controller;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditorPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorPageEventCopyWith<$Res> {
  factory $EditorPageEventCopyWith(
          EditorPageEvent value, $Res Function(EditorPageEvent) then) =
      _$EditorPageEventCopyWithImpl<$Res, EditorPageEvent>;
}

/// @nodoc
class _$EditorPageEventCopyWithImpl<$Res, $Val extends EditorPageEvent>
    implements $EditorPageEventCopyWith<$Res> {
  _$EditorPageEventCopyWithImpl(this._value, this._then);

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
  $Res call({String widgetType, int position, bool inline});
}

/// @nodoc
class __$$_AddToolCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_AddTool>
    implements _$$_AddToolCopyWith<$Res> {
  __$$_AddToolCopyWithImpl(_$_AddTool _value, $Res Function(_$_AddTool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetType = null,
    Object? position = null,
    Object? inline = null,
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
      null == inline
          ? _value.inline
          : inline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddTool implements _AddTool {
  const _$_AddTool(this.widgetType, this.position, this.inline);

  @override
  final String widgetType;
  @override
  final int position;
  @override
  final bool inline;

  @override
  String toString() {
    return 'EditorPageEvent.addTool(widgetType: $widgetType, position: $position, inline: $inline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTool &&
            (identical(other.widgetType, widgetType) ||
                other.widgetType == widgetType) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.inline, inline) || other.inline == inline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetType, position, inline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToolCopyWith<_$_AddTool> get copyWith =>
      __$$_AddToolCopyWithImpl<_$_AddTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return addTool(widgetType, position, inline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return addTool?.call(widgetType, position, inline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (addTool != null) {
      return addTool(widgetType, position, inline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
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
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
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
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
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

abstract class _AddTool implements EditorPageEvent {
  const factory _AddTool(
          final String widgetType, final int position, final bool inline) =
      _$_AddTool;

  String get widgetType;
  int get position;
  bool get inline;
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
  $Res call({String widgetType, int position});
}

/// @nodoc
class __$$_RemoveToolCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_RemoveTool>
    implements _$$_RemoveToolCopyWith<$Res> {
  __$$_RemoveToolCopyWithImpl(
      _$_RemoveTool _value, $Res Function(_$_RemoveTool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetType = null,
    Object? position = null,
  }) {
    return _then(_$_RemoveTool(
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

class _$_RemoveTool implements _RemoveTool {
  const _$_RemoveTool(this.widgetType, this.position);

  @override
  final String widgetType;
  @override
  final int position;

  @override
  String toString() {
    return 'EditorPageEvent.removeTool(widgetType: $widgetType, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveTool &&
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
  _$$_RemoveToolCopyWith<_$_RemoveTool> get copyWith =>
      __$$_RemoveToolCopyWithImpl<_$_RemoveTool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return removeTool(widgetType, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return removeTool?.call(widgetType, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (removeTool != null) {
      return removeTool(widgetType, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
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
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
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
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
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

abstract class _RemoveTool implements EditorPageEvent {
  const factory _RemoveTool(final String widgetType, final int position) =
      _$_RemoveTool;

  String get widgetType;
  int get position;
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
  $Res call({String widgetType, int position});
}

/// @nodoc
class __$$_SwitchPositionCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_SwitchPosition>
    implements _$$_SwitchPositionCopyWith<$Res> {
  __$$_SwitchPositionCopyWithImpl(
      _$_SwitchPosition _value, $Res Function(_$_SwitchPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetType = null,
    Object? position = null,
  }) {
    return _then(_$_SwitchPosition(
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

class _$_SwitchPosition implements _SwitchPosition {
  const _$_SwitchPosition(this.widgetType, this.position);

  @override
  final String widgetType;
  @override
  final int position;

  @override
  String toString() {
    return 'EditorPageEvent.switchPosition(widgetType: $widgetType, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchPosition &&
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
  _$$_SwitchPositionCopyWith<_$_SwitchPosition> get copyWith =>
      __$$_SwitchPositionCopyWithImpl<_$_SwitchPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return switchPosition(widgetType, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return switchPosition?.call(widgetType, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (switchPosition != null) {
      return switchPosition(widgetType, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
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
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
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
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
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

abstract class _SwitchPosition implements EditorPageEvent {
  const factory _SwitchPosition(final String widgetType, final int position) =
      _$_SwitchPosition;

  String get widgetType;
  int get position;
  @JsonKey(ignore: true)
  _$$_SwitchPositionCopyWith<_$_SwitchPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadDocumentCopyWith<$Res> {
  factory _$$_ReadDocumentCopyWith(
          _$_ReadDocument value, $Res Function(_$_ReadDocument) then) =
      __$$_ReadDocumentCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$_ReadDocumentCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_ReadDocument>
    implements _$$_ReadDocumentCopyWith<$Res> {
  __$$_ReadDocumentCopyWithImpl(
      _$_ReadDocument _value, $Res Function(_$_ReadDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ReadDocument(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_ReadDocument implements _ReadDocument {
  const _$_ReadDocument(final List<Map<String, dynamic>> data) : _data = data;

  final List<Map<String, dynamic>> _data;
  @override
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EditorPageEvent.readDocument(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadDocument &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadDocumentCopyWith<_$_ReadDocument> get copyWith =>
      __$$_ReadDocumentCopyWithImpl<_$_ReadDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return readDocument(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return readDocument?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (readDocument != null) {
      return readDocument(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return readDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return readDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (readDocument != null) {
      return readDocument(this);
    }
    return orElse();
  }
}

abstract class _ReadDocument implements EditorPageEvent {
  const factory _ReadDocument(final List<Map<String, dynamic>> data) =
      _$_ReadDocument;

  List<Map<String, dynamic>> get data;
  @JsonKey(ignore: true)
  _$$_ReadDocumentCopyWith<_$_ReadDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveDocumentCopyWith<$Res> {
  factory _$$_SaveDocumentCopyWith(
          _$_SaveDocument value, $Res Function(_$_SaveDocument) then) =
      __$$_SaveDocumentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveDocumentCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_SaveDocument>
    implements _$$_SaveDocumentCopyWith<$Res> {
  __$$_SaveDocumentCopyWithImpl(
      _$_SaveDocument _value, $Res Function(_$_SaveDocument) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveDocument implements _SaveDocument {
  const _$_SaveDocument();

  @override
  String toString() {
    return 'EditorPageEvent.saveDocument()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveDocument);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return saveDocument();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return saveDocument?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (saveDocument != null) {
      return saveDocument();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return saveDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return saveDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (saveDocument != null) {
      return saveDocument(this);
    }
    return orElse();
  }
}

abstract class _SaveDocument implements EditorPageEvent {
  const factory _SaveDocument() = _$_SaveDocument;
}

/// @nodoc
abstract class _$$_ExitDocumentCopyWith<$Res> {
  factory _$$_ExitDocumentCopyWith(
          _$_ExitDocument value, $Res Function(_$_ExitDocument) then) =
      __$$_ExitDocumentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExitDocumentCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_ExitDocument>
    implements _$$_ExitDocumentCopyWith<$Res> {
  __$$_ExitDocumentCopyWithImpl(
      _$_ExitDocument _value, $Res Function(_$_ExitDocument) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExitDocument implements _ExitDocument {
  const _$_ExitDocument();

  @override
  String toString() {
    return 'EditorPageEvent.exitDocument()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExitDocument);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return exitDocument();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return exitDocument?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (exitDocument != null) {
      return exitDocument();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
    required TResult Function(_RecordAudio value) recordAudio,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateTool value) updateTool,
  }) {
    return exitDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTool value)? addTool,
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
    TResult? Function(_RecordAudio value)? recordAudio,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateTool value)? updateTool,
  }) {
    return exitDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTool value)? addTool,
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
    TResult Function(_RecordAudio value)? recordAudio,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateTool value)? updateTool,
    required TResult orElse(),
  }) {
    if (exitDocument != null) {
      return exitDocument(this);
    }
    return orElse();
  }
}

abstract class _ExitDocument implements EditorPageEvent {
  const factory _ExitDocument() = _$_ExitDocument;
}

/// @nodoc
abstract class _$$_RecordAudioCopyWith<$Res> {
  factory _$$_RecordAudioCopyWith(
          _$_RecordAudio value, $Res Function(_$_RecordAudio) then) =
      __$$_RecordAudioCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecordAudioCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_RecordAudio>
    implements _$$_RecordAudioCopyWith<$Res> {
  __$$_RecordAudioCopyWithImpl(
      _$_RecordAudio _value, $Res Function(_$_RecordAudio) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecordAudio implements _RecordAudio {
  const _$_RecordAudio();

  @override
  String toString() {
    return 'EditorPageEvent.recordAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RecordAudio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return recordAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return recordAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (recordAudio != null) {
      return recordAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
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
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
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
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
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

abstract class _RecordAudio implements EditorPageEvent {
  const factory _RecordAudio() = _$_RecordAudio;
}

/// @nodoc
abstract class _$$_PlayAudioCopyWith<$Res> {
  factory _$$_PlayAudioCopyWith(
          _$_PlayAudio value, $Res Function(_$_PlayAudio) then) =
      __$$_PlayAudioCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayAudioCopyWithImpl<$Res>
    extends _$EditorPageEventCopyWithImpl<$Res, _$_PlayAudio>
    implements _$$_PlayAudioCopyWith<$Res> {
  __$$_PlayAudioCopyWithImpl(
      _$_PlayAudio _value, $Res Function(_$_PlayAudio) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayAudio implements _PlayAudio {
  const _$_PlayAudio();

  @override
  String toString() {
    return 'EditorPageEvent.playAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayAudio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return playAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return playAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
    TResult Function(String widgetType, EditorItemList stackWidget)? updateTool,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTool value) addTool,
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
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
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
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
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
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

abstract class _PlayAudio implements EditorPageEvent {
  const factory _PlayAudio() = _$_PlayAudio;
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
    extends _$EditorPageEventCopyWithImpl<$Res, _$_UpdateTool>
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
    return 'EditorPageEvent.updateTool(widgetType: $widgetType, stackWidget: $stackWidget)';
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
    required TResult Function(String widgetType, int position, bool inline)
        addTool,
    required TResult Function(String widgetType, int position) removeTool,
    required TResult Function(String widgetType, int position) switchPosition,
    required TResult Function(List<Map<String, dynamic>> data) readDocument,
    required TResult Function() saveDocument,
    required TResult Function() exitDocument,
    required TResult Function() recordAudio,
    required TResult Function() playAudio,
    required TResult Function(String widgetType, EditorItemList stackWidget)
        updateTool,
  }) {
    return updateTool(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetType, int position, bool inline)? addTool,
    TResult? Function(String widgetType, int position)? removeTool,
    TResult? Function(String widgetType, int position)? switchPosition,
    TResult? Function(List<Map<String, dynamic>> data)? readDocument,
    TResult? Function()? saveDocument,
    TResult? Function()? exitDocument,
    TResult? Function()? recordAudio,
    TResult? Function()? playAudio,
    TResult? Function(String widgetType, EditorItemList stackWidget)?
        updateTool,
  }) {
    return updateTool?.call(widgetType, stackWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetType, int position, bool inline)? addTool,
    TResult Function(String widgetType, int position)? removeTool,
    TResult Function(String widgetType, int position)? switchPosition,
    TResult Function(List<Map<String, dynamic>> data)? readDocument,
    TResult Function()? saveDocument,
    TResult Function()? exitDocument,
    TResult Function()? recordAudio,
    TResult Function()? playAudio,
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
    required TResult Function(_RemoveTool value) removeTool,
    required TResult Function(_SwitchPosition value) switchPosition,
    required TResult Function(_ReadDocument value) readDocument,
    required TResult Function(_SaveDocument value) saveDocument,
    required TResult Function(_ExitDocument value) exitDocument,
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
    TResult? Function(_RemoveTool value)? removeTool,
    TResult? Function(_SwitchPosition value)? switchPosition,
    TResult? Function(_ReadDocument value)? readDocument,
    TResult? Function(_SaveDocument value)? saveDocument,
    TResult? Function(_ExitDocument value)? exitDocument,
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
    TResult Function(_RemoveTool value)? removeTool,
    TResult Function(_SwitchPosition value)? switchPosition,
    TResult Function(_ReadDocument value)? readDocument,
    TResult Function(_SaveDocument value)? saveDocument,
    TResult Function(_ExitDocument value)? exitDocument,
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

abstract class _UpdateTool implements EditorPageEvent {
  const factory _UpdateTool(
          final String widgetType, final EditorItemList stackWidget) =
      _$_UpdateTool;

  String get widgetType;
  EditorItemList get stackWidget;
  @JsonKey(ignore: true)
  _$$_UpdateToolCopyWith<_$_UpdateTool> get copyWith =>
      throw _privateConstructorUsedError;
}
