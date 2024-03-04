import 'package:freezed_annotation/freezed_annotation.dart';

part 'ping_crypto_web_socket_request_dto.g.dart';

@JsonSerializable()
class PingCryptoWebSocketRequestDto {
  PingCryptoWebSocketRequestDto({
    required this.id,
    this.type = 'ping',
  });

  final String id;
  final String type;

  Map<String, dynamic> toJson() => _$PingCryptoWebSocketRequestDtoToJson(
        this,
      );
}
