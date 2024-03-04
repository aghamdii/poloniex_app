// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationFormState {
  bool get isFormValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationFormStateCopyWith<RegistrationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFormStateCopyWith<$Res> {
  factory $RegistrationFormStateCopyWith(RegistrationFormState value,
          $Res Function(RegistrationFormState) then) =
      _$RegistrationFormStateCopyWithImpl<$Res, RegistrationFormState>;
  @useResult
  $Res call({bool isFormValid});
}

/// @nodoc
class _$RegistrationFormStateCopyWithImpl<$Res,
        $Val extends RegistrationFormState>
    implements $RegistrationFormStateCopyWith<$Res> {
  _$RegistrationFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFormValid = null,
  }) {
    return _then(_value.copyWith(
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationFormStateImplCopyWith<$Res>
    implements $RegistrationFormStateCopyWith<$Res> {
  factory _$$RegistrationFormStateImplCopyWith(
          _$RegistrationFormStateImpl value,
          $Res Function(_$RegistrationFormStateImpl) then) =
      __$$RegistrationFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFormValid});
}

/// @nodoc
class __$$RegistrationFormStateImplCopyWithImpl<$Res>
    extends _$RegistrationFormStateCopyWithImpl<$Res,
        _$RegistrationFormStateImpl>
    implements _$$RegistrationFormStateImplCopyWith<$Res> {
  __$$RegistrationFormStateImplCopyWithImpl(_$RegistrationFormStateImpl _value,
      $Res Function(_$RegistrationFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFormValid = null,
  }) {
    return _then(_$RegistrationFormStateImpl(
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegistrationFormStateImpl implements _RegistrationFormState {
  const _$RegistrationFormStateImpl({this.isFormValid = false});

  @override
  @JsonKey()
  final bool isFormValid;

  @override
  String toString() {
    return 'RegistrationFormState(isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationFormStateImpl &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFormValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationFormStateImplCopyWith<_$RegistrationFormStateImpl>
      get copyWith => __$$RegistrationFormStateImplCopyWithImpl<
          _$RegistrationFormStateImpl>(this, _$identity);
}

abstract class _RegistrationFormState implements RegistrationFormState {
  const factory _RegistrationFormState({final bool isFormValid}) =
      _$RegistrationFormStateImpl;

  @override
  bool get isFormValid;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationFormStateImplCopyWith<_$RegistrationFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
