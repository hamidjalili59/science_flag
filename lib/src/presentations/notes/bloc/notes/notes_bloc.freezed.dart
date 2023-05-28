// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<NotesItemListModel> notes)
        idle,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<NotesItemListModel> notes)? idle,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<NotesItemListModel> notes)? idle,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

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
  $Res call({bool isLoading, List<NotesItemListModel> notes});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? notes = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NotesItemListModel>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false, final List<NotesItemListModel> notes = const []})
      : _notes = notes;

  @override
  @JsonKey()
  final bool isLoading;
  final List<NotesItemListModel> _notes;
  @override
  @JsonKey()
  List<NotesItemListModel> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NotesState.idle(isLoading: $isLoading, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<NotesItemListModel> notes)
        idle,
    required TResult Function() failed,
  }) {
    return idle(isLoading, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<NotesItemListModel> notes)? idle,
    TResult? Function()? failed,
  }) {
    return idle?.call(isLoading, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<NotesItemListModel> notes)? idle,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements NotesState {
  const factory _Idle(
      {final bool isLoading, final List<NotesItemListModel> notes}) = _$_Idle;

  bool get isLoading;
  List<NotesItemListModel> get notes;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'NotesState.failed()';
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
    required TResult Function(bool isLoading, List<NotesItemListModel> notes)
        idle,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<NotesItemListModel> notes)? idle,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<NotesItemListModel> notes)? idle,
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
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements NotesState {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

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
    extends _$NotesEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'NotesEvent.refresh()';
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
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
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
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements NotesEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_GetNotesItemCopyWith<$Res> {
  factory _$$_GetNotesItemCopyWith(
          _$_GetNotesItem value, $Res Function(_$_GetNotesItem) then) =
      __$$_GetNotesItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetNotesItemCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_GetNotesItem>
    implements _$$_GetNotesItemCopyWith<$Res> {
  __$$_GetNotesItemCopyWithImpl(
      _$_GetNotesItem _value, $Res Function(_$_GetNotesItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetNotesItem implements _GetNotesItem {
  const _$_GetNotesItem();

  @override
  String toString() {
    return 'NotesEvent.getNotesItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetNotesItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) {
    return getNotesItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) {
    return getNotesItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
    required TResult orElse(),
  }) {
    if (getNotesItem != null) {
      return getNotesItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) {
    return getNotesItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) {
    return getNotesItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) {
    if (getNotesItem != null) {
      return getNotesItem(this);
    }
    return orElse();
  }
}

abstract class _GetNotesItem implements NotesEvent {
  const factory _GetNotesItem() = _$_GetNotesItem;
}

/// @nodoc
abstract class _$$_CreateNotesItemCopyWith<$Res> {
  factory _$$_CreateNotesItemCopyWith(
          _$_CreateNotesItem value, $Res Function(_$_CreateNotesItem) then) =
      __$$_CreateNotesItemCopyWithImpl<$Res>;
  @useResult
  $Res call({NotesItemListModel? note});

  $NotesItemListModelCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_CreateNotesItemCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_CreateNotesItem>
    implements _$$_CreateNotesItemCopyWith<$Res> {
  __$$_CreateNotesItemCopyWithImpl(
      _$_CreateNotesItem _value, $Res Function(_$_CreateNotesItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$_CreateNotesItem(
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NotesItemListModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotesItemListModelCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NotesItemListModelCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_CreateNotesItem implements _CreateNotesItem {
  const _$_CreateNotesItem(this.note);

  @override
  final NotesItemListModel? note;

  @override
  String toString() {
    return 'NotesEvent.createNotesItem(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNotesItem &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNotesItemCopyWith<_$_CreateNotesItem> get copyWith =>
      __$$_CreateNotesItemCopyWithImpl<_$_CreateNotesItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) {
    return createNotesItem(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) {
    return createNotesItem?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
    required TResult orElse(),
  }) {
    if (createNotesItem != null) {
      return createNotesItem(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) {
    return createNotesItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) {
    return createNotesItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) {
    if (createNotesItem != null) {
      return createNotesItem(this);
    }
    return orElse();
  }
}

abstract class _CreateNotesItem implements NotesEvent {
  const factory _CreateNotesItem(final NotesItemListModel? note) =
      _$_CreateNotesItem;

  NotesItemListModel? get note;
  @JsonKey(ignore: true)
  _$$_CreateNotesItemCopyWith<_$_CreateNotesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteNotesItemCopyWith<$Res> {
  factory _$$_DeleteNotesItemCopyWith(
          _$_DeleteNotesItem value, $Res Function(_$_DeleteNotesItem) then) =
      __$$_DeleteNotesItemCopyWithImpl<$Res>;
  @useResult
  $Res call({NotesItemListModel? note});

  $NotesItemListModelCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_DeleteNotesItemCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_DeleteNotesItem>
    implements _$$_DeleteNotesItemCopyWith<$Res> {
  __$$_DeleteNotesItemCopyWithImpl(
      _$_DeleteNotesItem _value, $Res Function(_$_DeleteNotesItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$_DeleteNotesItem(
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NotesItemListModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotesItemListModelCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NotesItemListModelCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_DeleteNotesItem implements _DeleteNotesItem {
  const _$_DeleteNotesItem(this.note);

  @override
  final NotesItemListModel? note;

  @override
  String toString() {
    return 'NotesEvent.deleteNotesItem(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteNotesItem &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteNotesItemCopyWith<_$_DeleteNotesItem> get copyWith =>
      __$$_DeleteNotesItemCopyWithImpl<_$_DeleteNotesItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) {
    return deleteNotesItem(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) {
    return deleteNotesItem?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
    required TResult orElse(),
  }) {
    if (deleteNotesItem != null) {
      return deleteNotesItem(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) {
    return deleteNotesItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) {
    return deleteNotesItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) {
    if (deleteNotesItem != null) {
      return deleteNotesItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteNotesItem implements NotesEvent {
  const factory _DeleteNotesItem(final NotesItemListModel? note) =
      _$_DeleteNotesItem;

  NotesItemListModel? get note;
  @JsonKey(ignore: true)
  _$$_DeleteNotesItemCopyWith<_$_DeleteNotesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadNotesItemCopyWith<$Res> {
  factory _$$_ReadNotesItemCopyWith(
          _$_ReadNotesItem value, $Res Function(_$_ReadNotesItem) then) =
      __$$_ReadNotesItemCopyWithImpl<$Res>;
  @useResult
  $Res call({NotesItemListModel? note});

  $NotesItemListModelCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_ReadNotesItemCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_ReadNotesItem>
    implements _$$_ReadNotesItemCopyWith<$Res> {
  __$$_ReadNotesItemCopyWithImpl(
      _$_ReadNotesItem _value, $Res Function(_$_ReadNotesItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$_ReadNotesItem(
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NotesItemListModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotesItemListModelCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NotesItemListModelCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_ReadNotesItem implements _ReadNotesItem {
  const _$_ReadNotesItem(this.note);

  @override
  final NotesItemListModel? note;

  @override
  String toString() {
    return 'NotesEvent.readNotesItem(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadNotesItem &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadNotesItemCopyWith<_$_ReadNotesItem> get copyWith =>
      __$$_ReadNotesItemCopyWithImpl<_$_ReadNotesItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) {
    return readNotesItem(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) {
    return readNotesItem?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
    required TResult orElse(),
  }) {
    if (readNotesItem != null) {
      return readNotesItem(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) {
    return readNotesItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) {
    return readNotesItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) {
    if (readNotesItem != null) {
      return readNotesItem(this);
    }
    return orElse();
  }
}

abstract class _ReadNotesItem implements NotesEvent {
  const factory _ReadNotesItem(final NotesItemListModel? note) =
      _$_ReadNotesItem;

  NotesItemListModel? get note;
  @JsonKey(ignore: true)
  _$$_ReadNotesItemCopyWith<_$_ReadNotesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditNotesItemCopyWith<$Res> {
  factory _$$_EditNotesItemCopyWith(
          _$_EditNotesItem value, $Res Function(_$_EditNotesItem) then) =
      __$$_EditNotesItemCopyWithImpl<$Res>;
  @useResult
  $Res call({NotesItemListModel? note});

  $NotesItemListModelCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_EditNotesItemCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_EditNotesItem>
    implements _$$_EditNotesItemCopyWith<$Res> {
  __$$_EditNotesItemCopyWithImpl(
      _$_EditNotesItem _value, $Res Function(_$_EditNotesItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$_EditNotesItem(
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NotesItemListModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotesItemListModelCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NotesItemListModelCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_EditNotesItem implements _EditNotesItem {
  const _$_EditNotesItem(this.note);

  @override
  final NotesItemListModel? note;

  @override
  String toString() {
    return 'NotesEvent.editNotesItem(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditNotesItem &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditNotesItemCopyWith<_$_EditNotesItem> get copyWith =>
      __$$_EditNotesItemCopyWithImpl<_$_EditNotesItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() getNotesItem,
    required TResult Function(NotesItemListModel? note) createNotesItem,
    required TResult Function(NotesItemListModel? note) deleteNotesItem,
    required TResult Function(NotesItemListModel? note) readNotesItem,
    required TResult Function(NotesItemListModel? note) editNotesItem,
  }) {
    return editNotesItem(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function()? getNotesItem,
    TResult? Function(NotesItemListModel? note)? createNotesItem,
    TResult? Function(NotesItemListModel? note)? deleteNotesItem,
    TResult? Function(NotesItemListModel? note)? readNotesItem,
    TResult? Function(NotesItemListModel? note)? editNotesItem,
  }) {
    return editNotesItem?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? getNotesItem,
    TResult Function(NotesItemListModel? note)? createNotesItem,
    TResult Function(NotesItemListModel? note)? deleteNotesItem,
    TResult Function(NotesItemListModel? note)? readNotesItem,
    TResult Function(NotesItemListModel? note)? editNotesItem,
    required TResult orElse(),
  }) {
    if (editNotesItem != null) {
      return editNotesItem(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetNotesItem value) getNotesItem,
    required TResult Function(_CreateNotesItem value) createNotesItem,
    required TResult Function(_DeleteNotesItem value) deleteNotesItem,
    required TResult Function(_ReadNotesItem value) readNotesItem,
    required TResult Function(_EditNotesItem value) editNotesItem,
  }) {
    return editNotesItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetNotesItem value)? getNotesItem,
    TResult? Function(_CreateNotesItem value)? createNotesItem,
    TResult? Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult? Function(_ReadNotesItem value)? readNotesItem,
    TResult? Function(_EditNotesItem value)? editNotesItem,
  }) {
    return editNotesItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetNotesItem value)? getNotesItem,
    TResult Function(_CreateNotesItem value)? createNotesItem,
    TResult Function(_DeleteNotesItem value)? deleteNotesItem,
    TResult Function(_ReadNotesItem value)? readNotesItem,
    TResult Function(_EditNotesItem value)? editNotesItem,
    required TResult orElse(),
  }) {
    if (editNotesItem != null) {
      return editNotesItem(this);
    }
    return orElse();
  }
}

abstract class _EditNotesItem implements NotesEvent {
  const factory _EditNotesItem(final NotesItemListModel? note) =
      _$_EditNotesItem;

  NotesItemListModel? get note;
  @JsonKey(ignore: true)
  _$$_EditNotesItemCopyWith<_$_EditNotesItem> get copyWith =>
      throw _privateConstructorUsedError;
}
