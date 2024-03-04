// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_remote_data_source.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TradeRemoteDataSource extends TradeRemoteDataSource {
  _$TradeRemoteDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TradeRemoteDataSource;

  @override
  Future<Response<dynamic>> getCryptoWebSocketToken() {
    final Uri $url =
        Uri.parse('https://futures-api.poloniex.com/api/v1/bullet-public');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
