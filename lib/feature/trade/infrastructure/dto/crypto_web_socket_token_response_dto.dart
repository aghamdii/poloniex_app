import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_web_socket_token_response_dto.g.dart';

@JsonSerializable()
class CryptoWebSocketTokenResponseDto {
  CryptoWebSocketTokenResponseDto(
    this.code,
    this.data,
  );

  factory CryptoWebSocketTokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoWebSocketTokenResponseDtoFromJson(
        json,
      );

  final String? code;
  final CryptoWebSocketTokenDataDto data;
}

@JsonSerializable()
class CryptoWebSocketTokenDataDto {
  CryptoWebSocketTokenDataDto(
    this.instanceServers,
    this.token,
  );

  factory CryptoWebSocketTokenDataDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoWebSocketTokenDataDtoFromJson(
        json,
      );

  final List<CryptoWebSocketTokenDataInstanceServerDto>? instanceServers;
  final String? token;
}

@JsonSerializable()
class CryptoWebSocketTokenDataInstanceServerDto {
  CryptoWebSocketTokenDataInstanceServerDto(
    this.pingInterval,
    this.endpoint,
    this.protocol,
    this.encrypt,
    this.pingTimeout,
  );

  factory CryptoWebSocketTokenDataInstanceServerDto.fromJson(
          Map<String, dynamic> json) =>
      _$CryptoWebSocketTokenDataInstanceServerDtoFromJson(
        json,
      );

  final int? pingInterval;
  final String? endpoint;
  final String? protocol;
  final bool? encrypt;
  final int? pingTimeout;
}
