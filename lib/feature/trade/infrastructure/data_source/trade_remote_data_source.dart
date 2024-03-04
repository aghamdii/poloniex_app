import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'trade_remote_data_source.chopper.dart';

@LazySingleton()
@ChopperApi()
abstract class TradeRemoteDataSource extends ChopperService {
  @factoryMethod
  static TradeRemoteDataSource create(
    ChopperClient client,
  ) =>
      _$TradeRemoteDataSource(client);

  @Post(path: 'https://futures-api.poloniex.com/api/v1/bullet-public')
  Future<Response<dynamic>> getCryptoWebSocketToken();
}
