// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readingData,
    required TResult Function() jwtIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readingData,
    TResult? Function()? jwtIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readingData,
    TResult Function()? jwtIsExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingData value) readingData,
    required TResult Function(_JwtIsExist value) jwtIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingData value)? readingData,
    TResult? Function(_JwtIsExist value)? jwtIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingData value)? readingData,
    TResult Function(_JwtIsExist value)? jwtIsExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReadingDataCopyWith<$Res> {
  factory _$$_ReadingDataCopyWith(
          _$_ReadingData value, $Res Function(_$_ReadingData) then) =
      __$$_ReadingDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadingDataCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_ReadingData>
    implements _$$_ReadingDataCopyWith<$Res> {
  __$$_ReadingDataCopyWithImpl(
      _$_ReadingData _value, $Res Function(_$_ReadingData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadingData implements _ReadingData {
  const _$_ReadingData();

  @override
  String toString() {
    return 'SplashEvent.readingData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadingData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readingData,
    required TResult Function() jwtIsExist,
  }) {
    return readingData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readingData,
    TResult? Function()? jwtIsExist,
  }) {
    return readingData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readingData,
    TResult Function()? jwtIsExist,
    required TResult orElse(),
  }) {
    if (readingData != null) {
      return readingData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingData value) readingData,
    required TResult Function(_JwtIsExist value) jwtIsExist,
  }) {
    return readingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingData value)? readingData,
    TResult? Function(_JwtIsExist value)? jwtIsExist,
  }) {
    return readingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingData value)? readingData,
    TResult Function(_JwtIsExist value)? jwtIsExist,
    required TResult orElse(),
  }) {
    if (readingData != null) {
      return readingData(this);
    }
    return orElse();
  }
}

abstract class _ReadingData implements SplashEvent {
  const factory _ReadingData() = _$_ReadingData;
}

/// @nodoc
abstract class _$$_JwtIsExistCopyWith<$Res> {
  factory _$$_JwtIsExistCopyWith(
          _$_JwtIsExist value, $Res Function(_$_JwtIsExist) then) =
      __$$_JwtIsExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JwtIsExistCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_JwtIsExist>
    implements _$$_JwtIsExistCopyWith<$Res> {
  __$$_JwtIsExistCopyWithImpl(
      _$_JwtIsExist _value, $Res Function(_$_JwtIsExist) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JwtIsExist implements _JwtIsExist {
  const _$_JwtIsExist();

  @override
  String toString() {
    return 'SplashEvent.jwtIsExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JwtIsExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readingData,
    required TResult Function() jwtIsExist,
  }) {
    return jwtIsExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readingData,
    TResult? Function()? jwtIsExist,
  }) {
    return jwtIsExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readingData,
    TResult Function()? jwtIsExist,
    required TResult orElse(),
  }) {
    if (jwtIsExist != null) {
      return jwtIsExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadingData value) readingData,
    required TResult Function(_JwtIsExist value) jwtIsExist,
  }) {
    return jwtIsExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadingData value)? readingData,
    TResult? Function(_JwtIsExist value)? jwtIsExist,
  }) {
    return jwtIsExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadingData value)? readingData,
    TResult Function(_JwtIsExist value)? jwtIsExist,
    required TResult orElse(),
  }) {
    if (jwtIsExist != null) {
      return jwtIsExist(this);
    }
    return orElse();
  }
}

abstract class _JwtIsExist implements SplashEvent {
  const factory _JwtIsExist() = _$_JwtIsExist;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpVerifyResponse verify) jwtExist,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpVerifyResponse verify)? jwtExist,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpVerifyResponse verify)? jwtExist,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'SplashState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpVerifyResponse verify) jwtExist,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpVerifyResponse verify)? jwtExist,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpVerifyResponse verify)? jwtExist,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_Failure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SplashState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_JwtExistCopyWith<$Res> {
  factory _$$_JwtExistCopyWith(
          _$_JwtExist value, $Res Function(_$_JwtExist) then) =
      __$$_JwtExistCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpVerifyResponse verify});
}

/// @nodoc
class __$$_JwtExistCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_JwtExist>
    implements _$$_JwtExistCopyWith<$Res> {
  __$$_JwtExistCopyWithImpl(
      _$_JwtExist _value, $Res Function(_$_JwtExist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verify = null,
  }) {
    return _then(_$_JwtExist(
      null == verify
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as OtpVerifyResponse,
    ));
  }
}

/// @nodoc

class _$_JwtExist implements _JwtExist {
  const _$_JwtExist(this.verify);

  @override
  final OtpVerifyResponse verify;

  @override
  String toString() {
    return 'SplashState.jwtExist(verify: $verify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JwtExist &&
            (identical(other.verify, verify) || other.verify == verify));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JwtExistCopyWith<_$_JwtExist> get copyWith =>
      __$$_JwtExistCopyWithImpl<_$_JwtExist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpVerifyResponse verify) jwtExist,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return jwtExist(verify);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpVerifyResponse verify)? jwtExist,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return jwtExist?.call(verify);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpVerifyResponse verify)? jwtExist,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (jwtExist != null) {
      return jwtExist(verify);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_Failure value) failure,
  }) {
    return jwtExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_Failure value)? failure,
  }) {
    return jwtExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (jwtExist != null) {
      return jwtExist(this);
    }
    return orElse();
  }
}

abstract class _JwtExist implements SplashState {
  const factory _JwtExist(final OtpVerifyResponse verify) = _$_JwtExist;

  OtpVerifyResponse get verify;
  @JsonKey(ignore: true)
  _$$_JwtExistCopyWith<_$_JwtExist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure? failure, String message});

  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? message = null,
  }) {
    return _then(_$_Failure(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.failure, this.message = ''});

  @override
  final AuthFailure? failure;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SplashState.failure(failure: $failure, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpVerifyResponse verify) jwtExist,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return failure(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpVerifyResponse verify)? jwtExist,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return failure?.call(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpVerifyResponse verify)? jwtExist,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SplashState {
  const factory _Failure({final AuthFailure? failure, final String message}) =
      _$_Failure;

  AuthFailure? get failure;
  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
