// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntroState {
  int get pageState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageState) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageState)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageState)? currentPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentPageIndex value)? currentPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroStateCopyWith<IntroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroStateCopyWith<$Res> {
  factory $IntroStateCopyWith(
          IntroState value, $Res Function(IntroState) then) =
      _$IntroStateCopyWithImpl<$Res, IntroState>;
  @useResult
  $Res call({int pageState});
}

/// @nodoc
class _$IntroStateCopyWithImpl<$Res, $Val extends IntroState>
    implements $IntroStateCopyWith<$Res> {
  _$IntroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentPageIndexCopyWith<$Res>
    implements $IntroStateCopyWith<$Res> {
  factory _$$_CurrentPageIndexCopyWith(
          _$_CurrentPageIndex value, $Res Function(_$_CurrentPageIndex) then) =
      __$$_CurrentPageIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageState});
}

/// @nodoc
class __$$_CurrentPageIndexCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$_CurrentPageIndex>
    implements _$$_CurrentPageIndexCopyWith<$Res> {
  __$$_CurrentPageIndexCopyWithImpl(
      _$_CurrentPageIndex _value, $Res Function(_$_CurrentPageIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_$_CurrentPageIndex(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CurrentPageIndex implements _CurrentPageIndex {
  const _$_CurrentPageIndex({this.pageState = 0});

  @override
  @JsonKey()
  final int pageState;

  @override
  String toString() {
    return 'IntroState.currentPageIndex(pageState: $pageState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentPageIndex &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentPageIndexCopyWith<_$_CurrentPageIndex> get copyWith =>
      __$$_CurrentPageIndexCopyWithImpl<_$_CurrentPageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageState) currentPageIndex,
  }) {
    return currentPageIndex(pageState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageState)? currentPageIndex,
  }) {
    return currentPageIndex?.call(pageState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageState)? currentPageIndex,
    required TResult orElse(),
  }) {
    if (currentPageIndex != null) {
      return currentPageIndex(pageState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) {
    return currentPageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) {
    return currentPageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentPageIndex value)? currentPageIndex,
    required TResult orElse(),
  }) {
    if (currentPageIndex != null) {
      return currentPageIndex(this);
    }
    return orElse();
  }
}

abstract class _CurrentPageIndex implements IntroState {
  const factory _CurrentPageIndex({final int pageState}) = _$_CurrentPageIndex;

  @override
  int get pageState;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentPageIndexCopyWith<_$_CurrentPageIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IntroEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroEventCopyWith<IntroEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroEventCopyWith<$Res> {
  factory $IntroEventCopyWith(
          IntroEvent value, $Res Function(IntroEvent) then) =
      _$IntroEventCopyWithImpl<$Res, IntroEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$IntroEventCopyWithImpl<$Res, $Val extends IntroEvent>
    implements $IntroEventCopyWith<$Res> {
  _$IntroEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePagesCopyWith<$Res>
    implements $IntroEventCopyWith<$Res> {
  factory _$$_ChangePagesCopyWith(
          _$_ChangePages value, $Res Function(_$_ChangePages) then) =
      __$$_ChangePagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangePagesCopyWithImpl<$Res>
    extends _$IntroEventCopyWithImpl<$Res, _$_ChangePages>
    implements _$$_ChangePagesCopyWith<$Res> {
  __$$_ChangePagesCopyWithImpl(
      _$_ChangePages _value, $Res Function(_$_ChangePages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangePages(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePages implements _ChangePages {
  const _$_ChangePages(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'IntroEvent.changePages(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePages &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      __$$_ChangePagesCopyWithImpl<_$_ChangePages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePages,
  }) {
    return changePages(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePages,
  }) {
    return changePages?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePages,
    required TResult orElse(),
  }) {
    if (changePages != null) {
      return changePages(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
  }) {
    return changePages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
  }) {
    return changePages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    required TResult orElse(),
  }) {
    if (changePages != null) {
      return changePages(this);
    }
    return orElse();
  }
}

abstract class _ChangePages implements IntroEvent {
  const factory _ChangePages(final int index) = _$_ChangePages;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      throw _privateConstructorUsedError;
}
