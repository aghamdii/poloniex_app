import 'dart:async';
import 'dart:convert';

import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/infrastructure/logger.dart';
import 'package:poloniex_app/feature/web_socket/domain/web_socket_manager.dart';
import 'package:web_socket_client/web_socket_client.dart';

const _timeoutDuration = Duration(seconds: 5);
const _backoff = ConstantBackoff(Duration(seconds: 10));
const _messageRetryCount = 1;
const _messageBackoff = Duration(seconds: 2);
const _wsUrl = 'wss://futures-apiws.poloniex.com/endpoint';

@LazySingleton()
class CryptoWebSocketManager implements WebSocketManager {
  StreamController<Map<String, dynamic>> _messageController =
      StreamController<Map<String, dynamic>>.broadcast();
  WebSocket? socket;

  @override
  Future<void> setupConnection(String token) async {
    if (_messageController.isClosed) {
      _messageController = StreamController<Map<String, dynamic>>.broadcast();
    }

    final endPoint = '$_wsUrl?token=$token';
    final uri = Uri.parse(endPoint);
    if (socket == null) {
      socket = WebSocket(
        uri,
        timeout: _timeoutDuration,
        backoff: _backoff,
        pingInterval: Duration(seconds: 3),
      );
      _listenConnection();
      _listenMessages();
    } else {
      socket?.close();

      socket = WebSocket(
        uri,
        timeout: _timeoutDuration,
        backoff: _backoff,
      );
      _listenConnection();
      _listenMessages();
    }
  }

  @override
  Stream<Map<String, dynamic>> getMessageStream() {
    return _messageController.stream;
  }

  @override
  Future<void> sendMessage(Map<String, dynamic> request) async {
    var retryCount = 0;
    while (socket == null && retryCount <= _messageRetryCount) {
      retryCount++;
      Logger.w(
        '[CryptoWebSocketManager] [#$retryCount] Waiting for socket connection before sending $request',
      );
      await Future<void>.delayed(_messageBackoff);
    }

    await socket?.connection
        .firstWhere((state) => state is Connected || state is Reconnected);
    Logger.d('[CryptoWebSocketManager] request was sent $request');
    socket?.send(_encodeByteStream(request));
  }

  void _listenConnection() {
    socket?.connection.listen((state) {
      Logger.d('[CryptoWebSocketManager] connection was changed to $state');
    });
  }

  void _listenMessages() {
    socket?.messages.listen((message) {
      try {
        final decodedMessage = _decodeByteStream(message);
        Logger.d(
          '[CryptoWebSocketManager] new websocket message $decodedMessage}',
        );
        _messageController.add(decodedMessage);
      } catch (e, s) {
        Logger.e(
          '[CryptoWebSocketManager] websocket error message $e}',
          ex: e,
          stacktrace: s,
        );
      }
    });
  }

  Map<String, dynamic> _decodeByteStream(dynamic data) {
    return jsonDecode(data) as Map<String, dynamic>;
  }

  String _encodeByteStream(Map<String, dynamic> json) {
    return jsonEncode(json);
  }

  @override
  Future<void> closeConnection() async {
    await _messageController.close();
    socket?.close(1000, 'CLOSE_NORMAL');
  }
}
