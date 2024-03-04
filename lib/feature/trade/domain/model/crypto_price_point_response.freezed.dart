// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_price_point_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoPricePointResponse {
  CryptoPricePoint get data => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoPricePointResponseCopyWith<CryptoPricePointResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoPricePointResponseCopyWith<$Res> {
  factory $CryptoPricePointResponseCopyWith(CryptoPricePointResponse value,
          $Res Function(CryptoPricePointResponse) then) =
      _$CryptoPricePointResponseCopyWithImpl<$Res, CryptoPricePointResponse>;
  @useResult
  $Res call({CryptoPricePoint data, String subject, String topic, String type});

  $CryptoPricePointCopyWith<$Res> get data;
}

/// @nodoc
class _$CryptoPricePointResponseCopyWithImpl<$Res,
        $Val extends CryptoPricePointResponse>
    implements $CryptoPricePointResponseCopyWith<$Res> {
  _$CryptoPricePointResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? subject = null,
    Object? topic = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CryptoPricePoint,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoPricePointCopyWith<$Res> get data {
    return $CryptoPricePointCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CryptoPricePointResponseImplCopyWith<$Res>
    implements $CryptoPricePointResponseCopyWith<$Res> {
  factory _$$CryptoPricePointResponseImplCopyWith(
          _$CryptoPricePointResponseImpl value,
          $Res Function(_$CryptoPricePointResponseImpl) then) =
      __$$CryptoPricePointResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CryptoPricePoint data, String subject, String topic, String type});

  @override
  $CryptoPricePointCopyWith<$Res> get data;
}

/// @nodoc
class __$$CryptoPricePointResponseImplCopyWithImpl<$Res>
    extends _$CryptoPricePointResponseCopyWithImpl<$Res,
        _$CryptoPricePointResponseImpl>
    implements _$$CryptoPricePointResponseImplCopyWith<$Res> {
  __$$CryptoPricePointResponseImplCopyWithImpl(
      _$CryptoPricePointResponseImpl _value,
      $Res Function(_$CryptoPricePointResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? subject = null,
    Object? topic = null,
    Object? type = null,
  }) {
    return _then(_$CryptoPricePointResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CryptoPricePoint,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CryptoPricePointResponseImpl implements _CryptoPricePointResponse {
  const _$CryptoPricePointResponseImpl(
      {required this.data,
      required this.subject,
      required this.topic,
      required this.type});

  @override
  final CryptoPricePoint data;
  @override
  final String subject;
  @override
  final String topic;
  @override
  final String type;

  @override
  String toString() {
    return 'CryptoPricePointResponse(data: $data, subject: $subject, topic: $topic, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoPricePointResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, subject, topic, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoPricePointResponseImplCopyWith<_$CryptoPricePointResponseImpl>
      get copyWith => __$$CryptoPricePointResponseImplCopyWithImpl<
          _$CryptoPricePointResponseImpl>(this, _$identity);
}

abstract class _CryptoPricePointResponse implements CryptoPricePointResponse {
  const factory _CryptoPricePointResponse(
      {required final CryptoPricePoint data,
      required final String subject,
      required final String topic,
      required final String type}) = _$CryptoPricePointResponseImpl;

  @override
  CryptoPricePoint get data;
  @override
  String get subject;
  @override
  String get topic;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CryptoPricePointResponseImplCopyWith<_$CryptoPricePointResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CryptoPricePoint {
  String get symbol => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  String get side => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get bestBidSize => throw _privateConstructorUsedError;
  String get bestBidPrice => throw _privateConstructorUsedError;
  String get bestAskPrice => throw _privateConstructorUsedError;
  String get tradeId => throw _privateConstructorUsedError;
  int get ts => throw _privateConstructorUsedError;
  int get bestAskSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoPricePointCopyWith<CryptoPricePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoPricePointCopyWith<$Res> {
  factory $CryptoPricePointCopyWith(
          CryptoPricePoint value, $Res Function(CryptoPricePoint) then) =
      _$CryptoPricePointCopyWithImpl<$Res, CryptoPricePoint>;
  @useResult
  $Res call(
      {String symbol,
      int sequence,
      String side,
      int size,
      double price,
      int bestBidSize,
      String bestBidPrice,
      String bestAskPrice,
      String tradeId,
      int ts,
      int bestAskSize});
}

/// @nodoc
class _$CryptoPricePointCopyWithImpl<$Res, $Val extends CryptoPricePoint>
    implements $CryptoPricePointCopyWith<$Res> {
  _$CryptoPricePointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? sequence = null,
    Object? side = null,
    Object? size = null,
    Object? price = null,
    Object? bestBidSize = null,
    Object? bestBidPrice = null,
    Object? bestAskPrice = null,
    Object? tradeId = null,
    Object? ts = null,
    Object? bestAskSize = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      bestBidSize: null == bestBidSize
          ? _value.bestBidSize
          : bestBidSize // ignore: cast_nullable_to_non_nullable
              as int,
      bestBidPrice: null == bestBidPrice
          ? _value.bestBidPrice
          : bestBidPrice // ignore: cast_nullable_to_non_nullable
              as String,
      bestAskPrice: null == bestAskPrice
          ? _value.bestAskPrice
          : bestAskPrice // ignore: cast_nullable_to_non_nullable
              as String,
      tradeId: null == tradeId
          ? _value.tradeId
          : tradeId // ignore: cast_nullable_to_non_nullable
              as String,
      ts: null == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as int,
      bestAskSize: null == bestAskSize
          ? _value.bestAskSize
          : bestAskSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoPricePointImplCopyWith<$Res>
    implements $CryptoPricePointCopyWith<$Res> {
  factory _$$CryptoPricePointImplCopyWith(_$CryptoPricePointImpl value,
          $Res Function(_$CryptoPricePointImpl) then) =
      __$$CryptoPricePointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      int sequence,
      String side,
      int size,
      double price,
      int bestBidSize,
      String bestBidPrice,
      String bestAskPrice,
      String tradeId,
      int ts,
      int bestAskSize});
}

/// @nodoc
class __$$CryptoPricePointImplCopyWithImpl<$Res>
    extends _$CryptoPricePointCopyWithImpl<$Res, _$CryptoPricePointImpl>
    implements _$$CryptoPricePointImplCopyWith<$Res> {
  __$$CryptoPricePointImplCopyWithImpl(_$CryptoPricePointImpl _value,
      $Res Function(_$CryptoPricePointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? sequence = null,
    Object? side = null,
    Object? size = null,
    Object? price = null,
    Object? bestBidSize = null,
    Object? bestBidPrice = null,
    Object? bestAskPrice = null,
    Object? tradeId = null,
    Object? ts = null,
    Object? bestAskSize = null,
  }) {
    return _then(_$CryptoPricePointImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      bestBidSize: null == bestBidSize
          ? _value.bestBidSize
          : bestBidSize // ignore: cast_nullable_to_non_nullable
              as int,
      bestBidPrice: null == bestBidPrice
          ? _value.bestBidPrice
          : bestBidPrice // ignore: cast_nullable_to_non_nullable
              as String,
      bestAskPrice: null == bestAskPrice
          ? _value.bestAskPrice
          : bestAskPrice // ignore: cast_nullable_to_non_nullable
              as String,
      tradeId: null == tradeId
          ? _value.tradeId
          : tradeId // ignore: cast_nullable_to_non_nullable
              as String,
      ts: null == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as int,
      bestAskSize: null == bestAskSize
          ? _value.bestAskSize
          : bestAskSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CryptoPricePointImpl implements _CryptoPricePoint {
  const _$CryptoPricePointImpl(
      {required this.symbol,
      required this.sequence,
      required this.side,
      required this.size,
      required this.price,
      required this.bestBidSize,
      required this.bestBidPrice,
      required this.bestAskPrice,
      required this.tradeId,
      required this.ts,
      required this.bestAskSize});

  @override
  final String symbol;
  @override
  final int sequence;
  @override
  final String side;
  @override
  final int size;
  @override
  final double price;
  @override
  final int bestBidSize;
  @override
  final String bestBidPrice;
  @override
  final String bestAskPrice;
  @override
  final String tradeId;
  @override
  final int ts;
  @override
  final int bestAskSize;

  @override
  String toString() {
    return 'CryptoPricePoint(symbol: $symbol, sequence: $sequence, side: $side, size: $size, price: $price, bestBidSize: $bestBidSize, bestBidPrice: $bestBidPrice, bestAskPrice: $bestAskPrice, tradeId: $tradeId, ts: $ts, bestAskSize: $bestAskSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoPricePointImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.bestBidSize, bestBidSize) ||
                other.bestBidSize == bestBidSize) &&
            (identical(other.bestBidPrice, bestBidPrice) ||
                other.bestBidPrice == bestBidPrice) &&
            (identical(other.bestAskPrice, bestAskPrice) ||
                other.bestAskPrice == bestAskPrice) &&
            (identical(other.tradeId, tradeId) || other.tradeId == tradeId) &&
            (identical(other.ts, ts) || other.ts == ts) &&
            (identical(other.bestAskSize, bestAskSize) ||
                other.bestAskSize == bestAskSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol, sequence, side, size,
      price, bestBidSize, bestBidPrice, bestAskPrice, tradeId, ts, bestAskSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoPricePointImplCopyWith<_$CryptoPricePointImpl> get copyWith =>
      __$$CryptoPricePointImplCopyWithImpl<_$CryptoPricePointImpl>(
          this, _$identity);
}

abstract class _CryptoPricePoint implements CryptoPricePoint {
  const factory _CryptoPricePoint(
      {required final String symbol,
      required final int sequence,
      required final String side,
      required final int size,
      required final double price,
      required final int bestBidSize,
      required final String bestBidPrice,
      required final String bestAskPrice,
      required final String tradeId,
      required final int ts,
      required final int bestAskSize}) = _$CryptoPricePointImpl;

  @override
  String get symbol;
  @override
  int get sequence;
  @override
  String get side;
  @override
  int get size;
  @override
  double get price;
  @override
  int get bestBidSize;
  @override
  String get bestBidPrice;
  @override
  String get bestAskPrice;
  @override
  String get tradeId;
  @override
  int get ts;
  @override
  int get bestAskSize;
  @override
  @JsonKey(ignore: true)
  _$$CryptoPricePointImplCopyWith<_$CryptoPricePointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
