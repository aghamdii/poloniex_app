// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserSession? userSession) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserSession? userSession)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserSession? userSession)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateLoading value) loading,
    required TResult Function(_AppStateSuccess value) success,
    required TResult Function(_AppStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateLoading value)? loading,
    TResult? Function(_AppStateSuccess value)? success,
    TResult? Function(_AppStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateLoading value)? loading,
    TResult Function(_AppStateSuccess value)? success,
    TResult Function(_AppStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateLoadingImplCopyWith<$Res> {
  factory _$$AppStateLoadingImplCopyWith(_$AppStateLoadingImpl value,
          $Res Function(_$AppStateLoadingImpl) then) =
      __$$AppStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateLoadingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateLoadingImpl>
    implements _$$AppStateLoadingImplCopyWith<$Res> {
  __$$AppStateLoadingImplCopyWithImpl(
      _$AppStateLoadingImpl _value, $Res Function(_$AppStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateLoadingImpl implements _AppStateLoading {
  const _$AppStateLoadingImpl();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserSession? userSession) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserSession? userSession)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserSession? userSession)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateLoading value) loading,
    required TResult Function(_AppStateSuccess value) success,
    required TResult Function(_AppStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateLoading value)? loading,
    TResult? Function(_AppStateSuccess value)? success,
    TResult? Function(_AppStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateLoading value)? loading,
    TResult Function(_AppStateSuccess value)? success,
    TResult Function(_AppStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AppStateLoading implements AppState {
  const factory _AppStateLoading() = _$AppStateLoadingImpl;
}

/// @nodoc
abstract class _$$AppStateSuccessImplCopyWith<$Res> {
  factory _$$AppStateSuccessImplCopyWith(_$AppStateSuccessImpl value,
          $Res Function(_$AppStateSuccessImpl) then) =
      __$$AppStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserSession? userSession});

  $UserSessionCopyWith<$Res>? get userSession;
}

/// @nodoc
class __$$AppStateSuccessImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateSuccessImpl>
    implements _$$AppStateSuccessImplCopyWith<$Res> {
  __$$AppStateSuccessImplCopyWithImpl(
      _$AppStateSuccessImpl _value, $Res Function(_$AppStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSession = freezed,
  }) {
    return _then(_$AppStateSuccessImpl(
      userSession: freezed == userSession
          ? _value.userSession
          : userSession // ignore: cast_nullable_to_non_nullable
              as UserSession?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSessionCopyWith<$Res>? get userSession {
    if (_value.userSession == null) {
      return null;
    }

    return $UserSessionCopyWith<$Res>(_value.userSession!, (value) {
      return _then(_value.copyWith(userSession: value));
    });
  }
}

/// @nodoc

class _$AppStateSuccessImpl implements _AppStateSuccess {
  const _$AppStateSuccessImpl({this.userSession = null});

  @override
  @JsonKey()
  final UserSession? userSession;

  @override
  String toString() {
    return 'AppState.success(userSession: $userSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateSuccessImpl &&
            (identical(other.userSession, userSession) ||
                other.userSession == userSession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateSuccessImplCopyWith<_$AppStateSuccessImpl> get copyWith =>
      __$$AppStateSuccessImplCopyWithImpl<_$AppStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserSession? userSession) success,
    required TResult Function() error,
  }) {
    return success(userSession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserSession? userSession)? success,
    TResult? Function()? error,
  }) {
    return success?.call(userSession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserSession? userSession)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userSession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateLoading value) loading,
    required TResult Function(_AppStateSuccess value) success,
    required TResult Function(_AppStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateLoading value)? loading,
    TResult? Function(_AppStateSuccess value)? success,
    TResult? Function(_AppStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateLoading value)? loading,
    TResult Function(_AppStateSuccess value)? success,
    TResult Function(_AppStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppStateSuccess implements AppState {
  const factory _AppStateSuccess({final UserSession? userSession}) =
      _$AppStateSuccessImpl;

  UserSession? get userSession;
  @JsonKey(ignore: true)
  _$$AppStateSuccessImplCopyWith<_$AppStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateErrorImplCopyWith<$Res> {
  factory _$$AppStateErrorImplCopyWith(
          _$AppStateErrorImpl value, $Res Function(_$AppStateErrorImpl) then) =
      __$$AppStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateErrorImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateErrorImpl>
    implements _$$AppStateErrorImplCopyWith<$Res> {
  __$$AppStateErrorImplCopyWithImpl(
      _$AppStateErrorImpl _value, $Res Function(_$AppStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateErrorImpl implements _AppStateError {
  const _$AppStateErrorImpl();

  @override
  String toString() {
    return 'AppState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserSession? userSession) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserSession? userSession)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserSession? userSession)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateLoading value) loading,
    required TResult Function(_AppStateSuccess value) success,
    required TResult Function(_AppStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateLoading value)? loading,
    TResult? Function(_AppStateSuccess value)? success,
    TResult? Function(_AppStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateLoading value)? loading,
    TResult Function(_AppStateSuccess value)? success,
    TResult Function(_AppStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppStateError implements AppState {
  const factory _AppStateError() = _$AppStateErrorImpl;
}
