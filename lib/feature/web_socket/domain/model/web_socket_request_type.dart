enum WebSocketRequestType {
  subscribe("subscribe");

  const WebSocketRequestType(
    this.key,
  );

  final String key;
}
