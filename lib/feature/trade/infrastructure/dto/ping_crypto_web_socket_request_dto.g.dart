// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ping_crypto_web_socket_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PingCryptoWebSocketRequestDto _$PingCryptoWebSocketRequestDtoFromJson(
        Map<String, dynamic> json) =>
    PingCryptoWebSocketRequestDto(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'ping',
    );

Map<String, dynamic> _$PingCryptoWebSocketRequestDtoToJson(
        PingCryptoWebSocketRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
