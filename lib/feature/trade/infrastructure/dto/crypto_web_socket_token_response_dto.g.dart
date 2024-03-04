// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_web_socket_token_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoWebSocketTokenResponseDto _$CryptoWebSocketTokenResponseDtoFromJson(
        Map<String, dynamic> json) =>
    CryptoWebSocketTokenResponseDto(
      json['code'] as String?,
      CryptoWebSocketTokenDataDto.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CryptoWebSocketTokenResponseDtoToJson(
        CryptoWebSocketTokenResponseDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

CryptoWebSocketTokenDataDto _$CryptoWebSocketTokenDataDtoFromJson(
        Map<String, dynamic> json) =>
    CryptoWebSocketTokenDataDto(
      (json['instanceServers'] as List<dynamic>?)
          ?.map((e) => CryptoWebSocketTokenDataInstanceServerDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['token'] as String?,
    );

Map<String, dynamic> _$CryptoWebSocketTokenDataDtoToJson(
        CryptoWebSocketTokenDataDto instance) =>
    <String, dynamic>{
      'instanceServers': instance.instanceServers,
      'token': instance.token,
    };

CryptoWebSocketTokenDataInstanceServerDto
    _$CryptoWebSocketTokenDataInstanceServerDtoFromJson(
            Map<String, dynamic> json) =>
        CryptoWebSocketTokenDataInstanceServerDto(
          json['pingInterval'] as int?,
          json['endpoint'] as String?,
          json['protocol'] as String?,
          json['encrypt'] as bool?,
          json['pingTimeout'] as int?,
        );

Map<String, dynamic> _$CryptoWebSocketTokenDataInstanceServerDtoToJson(
        CryptoWebSocketTokenDataInstanceServerDto instance) =>
    <String, dynamic>{
      'pingInterval': instance.pingInterval,
      'endpoint': instance.endpoint,
      'protocol': instance.protocol,
      'encrypt': instance.encrypt,
      'pingTimeout': instance.pingTimeout,
    };
