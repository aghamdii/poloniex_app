import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_web_socket_token_response.freezed.dart';

@freezed
class CryptoWebSocketTokenResponse with _$CryptoWebSocketTokenResponse {
  const factory CryptoWebSocketTokenResponse({
    required String code,
    required CryptoWebSocketTokenData data,
  }) = _CryptoWebSocketTokenResponse;
}

@freezed
class CryptoWebSocketTokenData with _$CryptoWebSocketTokenData {
  const factory CryptoWebSocketTokenData({
    required List<CryptoWebSocketTokenDataInstanceServer> instanceServers,
    required String token,
  }) = _CryptoWebSocketTokenData;
}

@freezed
class CryptoWebSocketTokenDataInstanceServer
    with _$CryptoWebSocketTokenDataInstanceServer {
  const factory CryptoWebSocketTokenDataInstanceServer({
    required int pingInterval,
    required String endpoint,
    required String protocol,
    required bool encrypt,
    required int pingTimeout,
  }) = _CryptoWebSocketTokenDataInstanceServer;
}
