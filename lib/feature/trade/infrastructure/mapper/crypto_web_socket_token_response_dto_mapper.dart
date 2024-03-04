import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/infrastructure/mapper/data_mapper.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_web_socket_token_response.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/crypto_web_socket_token_response_dto.dart';

@inject
class CryptoWebSocketTokenResponseDtoMapper extends DataMapper<
    CryptoWebSocketTokenResponseDto, CryptoWebSocketTokenResponse> {
  CryptoWebSocketTokenResponseDtoMapper(
    this._cryptoWebSocketTokenDataDtoMapper,
  );

  final CryptoWebSocketTokenDataDtoMapper _cryptoWebSocketTokenDataDtoMapper;

  @override
  CryptoWebSocketTokenResponse map(CryptoWebSocketTokenResponseDto data) {
    return CryptoWebSocketTokenResponse(
      code: data.code ?? '',
      data: _cryptoWebSocketTokenDataDtoMapper.map(data.data),
    );
  }
}

@inject
class CryptoWebSocketTokenDataDtoMapper
    extends DataMapper<CryptoWebSocketTokenDataDto, CryptoWebSocketTokenData> {
  CryptoWebSocketTokenDataDtoMapper(
    this._cryptoWebSocketTokenDataInstanceServerDtoMapper,
  );

  final CryptoWebSocketTokenDataInstanceServerDtoMapper
      _cryptoWebSocketTokenDataInstanceServerDtoMapper;

  @override
  CryptoWebSocketTokenData map(CryptoWebSocketTokenDataDto data) {
    return CryptoWebSocketTokenData(
      instanceServers: data.instanceServers
              ?.map(
                (e) => _cryptoWebSocketTokenDataInstanceServerDtoMapper.map(e),
              )
              .toList() ??
          [],
      token: data.token ?? '',
    );
  }
}

@inject
class CryptoWebSocketTokenDataInstanceServerDtoMapper extends DataMapper<
    CryptoWebSocketTokenDataInstanceServerDto,
    CryptoWebSocketTokenDataInstanceServer> {
  @override
  CryptoWebSocketTokenDataInstanceServer map(
      CryptoWebSocketTokenDataInstanceServerDto data) {
    return CryptoWebSocketTokenDataInstanceServer(
      pingInterval: data.pingInterval ?? 0,
      endpoint: data.endpoint ?? '',
      protocol: data.protocol ?? '',
      encrypt: data.encrypt ?? false,
      pingTimeout: data.pingTimeout ?? 0,
    );
  }
}
