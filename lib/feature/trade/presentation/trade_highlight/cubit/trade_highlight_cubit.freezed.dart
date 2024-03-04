// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_highlight_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TradeHighlightState {
  List<CryptoPricePoint> get cryptoPricePoints =>
      throw _privateConstructorUsedError;
  CryptoPricePoint? get selectedCryptoPricePoint =>
      throw _privateConstructorUsedError;
  PriceDifferenceStatus get priceDifferenceStatus =>
      throw _privateConstructorUsedError;
  double get difference => throw _privateConstructorUsedError;
  double get userInput => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TradeHighlightStateCopyWith<TradeHighlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeHighlightStateCopyWith<$Res> {
  factory $TradeHighlightStateCopyWith(
          TradeHighlightState value, $Res Function(TradeHighlightState) then) =
      _$TradeHighlightStateCopyWithImpl<$Res, TradeHighlightState>;
  @useResult
  $Res call(
      {List<CryptoPricePoint> cryptoPricePoints,
      CryptoPricePoint? selectedCryptoPricePoint,
      PriceDifferenceStatus priceDifferenceStatus,
      double difference,
      double userInput});

  $CryptoPricePointCopyWith<$Res>? get selectedCryptoPricePoint;
}

/// @nodoc
class _$TradeHighlightStateCopyWithImpl<$Res, $Val extends TradeHighlightState>
    implements $TradeHighlightStateCopyWith<$Res> {
  _$TradeHighlightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoPricePoints = null,
    Object? selectedCryptoPricePoint = freezed,
    Object? priceDifferenceStatus = null,
    Object? difference = null,
    Object? userInput = null,
  }) {
    return _then(_value.copyWith(
      cryptoPricePoints: null == cryptoPricePoints
          ? _value.cryptoPricePoints
          : cryptoPricePoints // ignore: cast_nullable_to_non_nullable
              as List<CryptoPricePoint>,
      selectedCryptoPricePoint: freezed == selectedCryptoPricePoint
          ? _value.selectedCryptoPricePoint
          : selectedCryptoPricePoint // ignore: cast_nullable_to_non_nullable
              as CryptoPricePoint?,
      priceDifferenceStatus: null == priceDifferenceStatus
          ? _value.priceDifferenceStatus
          : priceDifferenceStatus // ignore: cast_nullable_to_non_nullable
              as PriceDifferenceStatus,
      difference: null == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
      userInput: null == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoPricePointCopyWith<$Res>? get selectedCryptoPricePoint {
    if (_value.selectedCryptoPricePoint == null) {
      return null;
    }

    return $CryptoPricePointCopyWith<$Res>(_value.selectedCryptoPricePoint!,
        (value) {
      return _then(_value.copyWith(selectedCryptoPricePoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradeHighlightStateImplCopyWith<$Res>
    implements $TradeHighlightStateCopyWith<$Res> {
  factory _$$TradeHighlightStateImplCopyWith(_$TradeHighlightStateImpl value,
          $Res Function(_$TradeHighlightStateImpl) then) =
      __$$TradeHighlightStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CryptoPricePoint> cryptoPricePoints,
      CryptoPricePoint? selectedCryptoPricePoint,
      PriceDifferenceStatus priceDifferenceStatus,
      double difference,
      double userInput});

  @override
  $CryptoPricePointCopyWith<$Res>? get selectedCryptoPricePoint;
}

/// @nodoc
class __$$TradeHighlightStateImplCopyWithImpl<$Res>
    extends _$TradeHighlightStateCopyWithImpl<$Res, _$TradeHighlightStateImpl>
    implements _$$TradeHighlightStateImplCopyWith<$Res> {
  __$$TradeHighlightStateImplCopyWithImpl(_$TradeHighlightStateImpl _value,
      $Res Function(_$TradeHighlightStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoPricePoints = null,
    Object? selectedCryptoPricePoint = freezed,
    Object? priceDifferenceStatus = null,
    Object? difference = null,
    Object? userInput = null,
  }) {
    return _then(_$TradeHighlightStateImpl(
      cryptoPricePoints: null == cryptoPricePoints
          ? _value._cryptoPricePoints
          : cryptoPricePoints // ignore: cast_nullable_to_non_nullable
              as List<CryptoPricePoint>,
      selectedCryptoPricePoint: freezed == selectedCryptoPricePoint
          ? _value.selectedCryptoPricePoint
          : selectedCryptoPricePoint // ignore: cast_nullable_to_non_nullable
              as CryptoPricePoint?,
      priceDifferenceStatus: null == priceDifferenceStatus
          ? _value.priceDifferenceStatus
          : priceDifferenceStatus // ignore: cast_nullable_to_non_nullable
              as PriceDifferenceStatus,
      difference: null == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
      userInput: null == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TradeHighlightStateImpl implements _TradeHighlightState {
  const _$TradeHighlightStateImpl(
      {final List<CryptoPricePoint> cryptoPricePoints = const [],
      this.selectedCryptoPricePoint = null,
      this.priceDifferenceStatus = PriceDifferenceStatus.neutral,
      this.difference = 0.00,
      this.userInput = 0.00})
      : _cryptoPricePoints = cryptoPricePoints;

  final List<CryptoPricePoint> _cryptoPricePoints;
  @override
  @JsonKey()
  List<CryptoPricePoint> get cryptoPricePoints {
    if (_cryptoPricePoints is EqualUnmodifiableListView)
      return _cryptoPricePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptoPricePoints);
  }

  @override
  @JsonKey()
  final CryptoPricePoint? selectedCryptoPricePoint;
  @override
  @JsonKey()
  final PriceDifferenceStatus priceDifferenceStatus;
  @override
  @JsonKey()
  final double difference;
  @override
  @JsonKey()
  final double userInput;

  @override
  String toString() {
    return 'TradeHighlightState(cryptoPricePoints: $cryptoPricePoints, selectedCryptoPricePoint: $selectedCryptoPricePoint, priceDifferenceStatus: $priceDifferenceStatus, difference: $difference, userInput: $userInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeHighlightStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cryptoPricePoints, _cryptoPricePoints) &&
            (identical(
                    other.selectedCryptoPricePoint, selectedCryptoPricePoint) ||
                other.selectedCryptoPricePoint == selectedCryptoPricePoint) &&
            (identical(other.priceDifferenceStatus, priceDifferenceStatus) ||
                other.priceDifferenceStatus == priceDifferenceStatus) &&
            (identical(other.difference, difference) ||
                other.difference == difference) &&
            (identical(other.userInput, userInput) ||
                other.userInput == userInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cryptoPricePoints),
      selectedCryptoPricePoint,
      priceDifferenceStatus,
      difference,
      userInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeHighlightStateImplCopyWith<_$TradeHighlightStateImpl> get copyWith =>
      __$$TradeHighlightStateImplCopyWithImpl<_$TradeHighlightStateImpl>(
          this, _$identity);
}

abstract class _TradeHighlightState implements TradeHighlightState {
  const factory _TradeHighlightState(
      {final List<CryptoPricePoint> cryptoPricePoints,
      final CryptoPricePoint? selectedCryptoPricePoint,
      final PriceDifferenceStatus priceDifferenceStatus,
      final double difference,
      final double userInput}) = _$TradeHighlightStateImpl;

  @override
  List<CryptoPricePoint> get cryptoPricePoints;
  @override
  CryptoPricePoint? get selectedCryptoPricePoint;
  @override
  PriceDifferenceStatus get priceDifferenceStatus;
  @override
  double get difference;
  @override
  double get userInput;
  @override
  @JsonKey(ignore: true)
  _$$TradeHighlightStateImplCopyWith<_$TradeHighlightStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
