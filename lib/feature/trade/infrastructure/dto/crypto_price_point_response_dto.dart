import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_price_point_response_dto.g.dart';

@JsonSerializable()
class CryptoPricePointResponseDto {
  CryptoPricePointResponseDto(
    this.data,
    this.subject,
    this.topic,
    this.type,
  );

  factory CryptoPricePointResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoPricePointResponseDtoFromJson(
        json,
      );

  final CryptoPricePointDto data;
  final String? subject;
  final String? topic;
  final String? type;
}

@JsonSerializable()
class CryptoPricePointDto {
  CryptoPricePointDto(
    this.symbol,
    this.sequence,
    this.side,
    this.size,
    this.price,
    this.bestBidPrice,
    this.bestAskPrice,
    this.tradeId,
    this.ts,
    this.bestAskSize,
    this.bestBidSize,
  );

  factory CryptoPricePointDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoPricePointDtoFromJson(
        json,
      );

  final String? symbol;
  final int? sequence;
  final String? side;
  final int? size;
  final double? price;
  final int? bestBidSize;
  final String? bestBidPrice;
  final String? bestAskPrice;
  final String? tradeId;
  final int? ts;
  final int? bestAskSize;
}
