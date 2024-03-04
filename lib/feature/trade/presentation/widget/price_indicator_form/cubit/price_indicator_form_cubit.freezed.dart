// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_indicator_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceIndicatorFormState {
  PriceDifferenceStatus get priceDifferenceStatus =>
      throw _privateConstructorUsedError;
  double get difference => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceIndicatorFormStateCopyWith<PriceIndicatorFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceIndicatorFormStateCopyWith<$Res> {
  factory $PriceIndicatorFormStateCopyWith(PriceIndicatorFormState value,
          $Res Function(PriceIndicatorFormState) then) =
      _$PriceIndicatorFormStateCopyWithImpl<$Res, PriceIndicatorFormState>;
  @useResult
  $Res call({PriceDifferenceStatus priceDifferenceStatus, double difference});
}

/// @nodoc
class _$PriceIndicatorFormStateCopyWithImpl<$Res,
        $Val extends PriceIndicatorFormState>
    implements $PriceIndicatorFormStateCopyWith<$Res> {
  _$PriceIndicatorFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceDifferenceStatus = null,
    Object? difference = null,
  }) {
    return _then(_value.copyWith(
      priceDifferenceStatus: null == priceDifferenceStatus
          ? _value.priceDifferenceStatus
          : priceDifferenceStatus // ignore: cast_nullable_to_non_nullable
              as PriceDifferenceStatus,
      difference: null == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceIndicatorFormStateImplCopyWith<$Res>
    implements $PriceIndicatorFormStateCopyWith<$Res> {
  factory _$$PriceIndicatorFormStateImplCopyWith(
          _$PriceIndicatorFormStateImpl value,
          $Res Function(_$PriceIndicatorFormStateImpl) then) =
      __$$PriceIndicatorFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceDifferenceStatus priceDifferenceStatus, double difference});
}

/// @nodoc
class __$$PriceIndicatorFormStateImplCopyWithImpl<$Res>
    extends _$PriceIndicatorFormStateCopyWithImpl<$Res,
        _$PriceIndicatorFormStateImpl>
    implements _$$PriceIndicatorFormStateImplCopyWith<$Res> {
  __$$PriceIndicatorFormStateImplCopyWithImpl(
      _$PriceIndicatorFormStateImpl _value,
      $Res Function(_$PriceIndicatorFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceDifferenceStatus = null,
    Object? difference = null,
  }) {
    return _then(_$PriceIndicatorFormStateImpl(
      priceDifferenceStatus: null == priceDifferenceStatus
          ? _value.priceDifferenceStatus
          : priceDifferenceStatus // ignore: cast_nullable_to_non_nullable
              as PriceDifferenceStatus,
      difference: null == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceIndicatorFormStateImpl implements _PriceIndicatorFormState {
  const _$PriceIndicatorFormStateImpl(
      {this.priceDifferenceStatus = PriceDifferenceStatus.neutral,
      this.difference = 0.00});

  @override
  @JsonKey()
  final PriceDifferenceStatus priceDifferenceStatus;
  @override
  @JsonKey()
  final double difference;

  @override
  String toString() {
    return 'PriceIndicatorFormState(priceDifferenceStatus: $priceDifferenceStatus, difference: $difference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceIndicatorFormStateImpl &&
            (identical(other.priceDifferenceStatus, priceDifferenceStatus) ||
                other.priceDifferenceStatus == priceDifferenceStatus) &&
            (identical(other.difference, difference) ||
                other.difference == difference));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, priceDifferenceStatus, difference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceIndicatorFormStateImplCopyWith<_$PriceIndicatorFormStateImpl>
      get copyWith => __$$PriceIndicatorFormStateImplCopyWithImpl<
          _$PriceIndicatorFormStateImpl>(this, _$identity);
}

abstract class _PriceIndicatorFormState implements PriceIndicatorFormState {
  const factory _PriceIndicatorFormState(
      {final PriceDifferenceStatus priceDifferenceStatus,
      final double difference}) = _$PriceIndicatorFormStateImpl;

  @override
  PriceDifferenceStatus get priceDifferenceStatus;
  @override
  double get difference;
  @override
  @JsonKey(ignore: true)
  _$$PriceIndicatorFormStateImplCopyWith<_$PriceIndicatorFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
