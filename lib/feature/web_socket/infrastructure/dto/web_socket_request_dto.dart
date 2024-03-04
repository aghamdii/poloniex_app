import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_socket_request_dto.g.dart';

@JsonSerializable()
class WebSocketRequestDto {
  WebSocketRequestDto(
    this.id,
    this.type,
    this.topic,
    this.response,
  );

  final int id;
  final String type;
  final String topic;
  final bool response;

  Map<String, dynamic> toJson() => _$WebSocketRequestDtoToJson(
        this,
      );
}
