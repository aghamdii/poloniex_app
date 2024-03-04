// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_with_email_and_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterWithEmailAndPasswordRequest {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterWithEmailAndPasswordRequestCopyWith<
          RegisterWithEmailAndPasswordRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordRequestCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordRequestCopyWith(
          RegisterWithEmailAndPasswordRequest value,
          $Res Function(RegisterWithEmailAndPasswordRequest) then) =
      _$RegisterWithEmailAndPasswordRequestCopyWithImpl<$Res,
          RegisterWithEmailAndPasswordRequest>;
  @useResult
  $Res call({String firstName, String lastName, String email, String password});
}

/// @nodoc
class _$RegisterWithEmailAndPasswordRequestCopyWithImpl<$Res,
        $Val extends RegisterWithEmailAndPasswordRequest>
    implements $RegisterWithEmailAndPasswordRequestCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordRequestImplCopyWith<$Res>
    implements $RegisterWithEmailAndPasswordRequestCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordRequestImplCopyWith(
          _$RegisterWithEmailAndPasswordRequestImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordRequestImpl) then) =
      __$$RegisterWithEmailAndPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String email, String password});
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordRequestImplCopyWithImpl<$Res>
    extends _$RegisterWithEmailAndPasswordRequestCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordRequestImpl>
    implements _$$RegisterWithEmailAndPasswordRequestImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordRequestImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordRequestImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterWithEmailAndPasswordRequestImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterWithEmailAndPasswordRequestImpl
    implements _RegisterWithEmailAndPasswordRequest {
  const _$RegisterWithEmailAndPasswordRequestImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterWithEmailAndPasswordRequest(firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterWithEmailAndPasswordRequestImplCopyWith<
          _$RegisterWithEmailAndPasswordRequestImpl>
      get copyWith => __$$RegisterWithEmailAndPasswordRequestImplCopyWithImpl<
          _$RegisterWithEmailAndPasswordRequestImpl>(this, _$identity);
}

abstract class _RegisterWithEmailAndPasswordRequest
    implements RegisterWithEmailAndPasswordRequest {
  const factory _RegisterWithEmailAndPasswordRequest(
          {required final String firstName,
          required final String lastName,
          required final String email,
          required final String password}) =
      _$RegisterWithEmailAndPasswordRequestImpl;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterWithEmailAndPasswordRequestImplCopyWith<
          _$RegisterWithEmailAndPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
