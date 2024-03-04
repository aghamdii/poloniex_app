import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_web_socket_token_response.dart';
import 'package:poloniex_app/feature/trade/domain/model/trade_web_socket_subject.dart';
import 'package:poloniex_app/feature/trade/domain/repository/trade_repository.dart';
import 'package:poloniex_app/feature/trade/infrastructure/crypto_web_socket_manager.dart';
import 'package:poloniex_app/feature/trade/infrastructure/data_source/trade_remote_data_source.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/crypto_price_point_response_dto.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/crypto_web_socket_token_response_dto.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/ping_crypto_web_socket_request_dto.dart';
import 'package:poloniex_app/feature/trade/infrastructure/mapper/crypto_price_point_response_dto_mapper.dart';
import 'package:poloniex_app/feature/trade/infrastructure/mapper/crypto_web_socket_token_response_dto_mapper.dart';
import 'package:poloniex_app/feature/web_socket/domain/model/web_socket_request_type.dart';
import 'package:poloniex_app/feature/web_socket/infrastructure/dto/web_socket_request_dto.dart';

@LazySingleton(as: TradeRepository)
class TradeRepositoryImpl extends TradeRepository {
  TradeRepositoryImpl(
    this._cryptoWebSocketManager,
    this._cryptoPricePointResponseDtoMapper,
    this._cryptoWebSocketTokenResponseDtoMapper,
    this._tradeRemoteDataSource,
  );

  final CryptoWebSocketManager _cryptoWebSocketManager;
  final CryptoPricePointResponseDtoMapper _cryptoPricePointResponseDtoMapper;
  final CryptoWebSocketTokenResponseDtoMapper
      _cryptoWebSocketTokenResponseDtoMapper;

  final TradeRemoteDataSource _tradeRemoteDataSource;

  @override
  Stream<CryptoPricePoint> getCryptoPricePoint() {
    final request = WebSocketRequestDto(
      1545910660740,
      WebSocketRequestType.subscribe.key,
      '/contractMarket/ticker:BTCUSDTPERP',
      true,
    );

    print(_cryptoWebSocketManager.socket);

    _cryptoWebSocketManager.sendMessage(request.toJson());

    return _cryptoWebSocketManager
        .getMessageStream()
        .where((event) => event['subject'] == TradeWebSocketSubject.ticker.key)
        .asyncMap(
          (response) => CryptoPricePointResponseDto.fromJson(response),
        )
        .asyncMap(
            (response) => _cryptoPricePointResponseDtoMapper.map(response))
        .asyncMap((response) => response.data);
  }

  @override
  Future<void> pingCryptoWebSocket(PingCryptoWebSocketRequestDto request) =>
      _cryptoWebSocketManager.sendMessage(request.toJson());

  @override
  Future<CryptoWebSocketTokenResponse> getCryptoWebSocketTokenUseCase() async {
    final response = await _tradeRemoteDataSource.getCryptoWebSocketToken();

    if (response.isSuccessful && response.body != null) {
      final dto = CryptoWebSocketTokenResponseDto.fromJson(response.body!);
      return _cryptoWebSocketTokenResponseDtoMapper.map(dto);
    }

    throw Exception(
      response.error! as Map<String, dynamic>,
    );
  }
}
