// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_price_point_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoPricePointResponseDto _$CryptoPricePointResponseDtoFromJson(
        Map<String, dynamic> json) =>
    CryptoPricePointResponseDto(
      CryptoPricePointDto.fromJson(json['data'] as Map<String, dynamic>),
      json['subject'] as String?,
      json['topic'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$CryptoPricePointResponseDtoToJson(
        CryptoPricePointResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'subject': instance.subject,
      'topic': instance.topic,
      'type': instance.type,
    };

CryptoPricePointDto _$CryptoPricePointDtoFromJson(Map<String, dynamic> json) =>
    CryptoPricePointDto(
      json['symbol'] as String?,
      json['sequence'] as int?,
      json['side'] as String?,
      json['size'] as int?,
      (json['price'] as num?)?.toDouble(),
      json['bestBidPrice'] as String?,
      json['bestAskPrice'] as String?,
      json['tradeId'] as String?,
      json['ts'] as int?,
      json['bestAskSize'] as int?,
      json['bestBidSize'] as int?,
    );

Map<String, dynamic> _$CryptoPricePointDtoToJson(
        CryptoPricePointDto instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'sequence': instance.sequence,
      'side': instance.side,
      'size': instance.size,
      'price': instance.price,
      'bestBidSize': instance.bestBidSize,
      'bestBidPrice': instance.bestBidPrice,
      'bestAskPrice': instance.bestAskPrice,
      'tradeId': instance.tradeId,
      'ts': instance.ts,
      'bestAskSize': instance.bestAskSize,
    };
