abstract class WebSocketManager {
  Future<void> setupConnection(String token);

  Stream<Map<String, dynamic>> getMessageStream();

  Future<void> sendMessage(Map<String, dynamic> request);

  Future<void> closeConnection();
}
