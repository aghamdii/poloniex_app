// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebSocketRequestDto _$WebSocketRequestDtoFromJson(Map<String, dynamic> json) =>
    WebSocketRequestDto(
      json['id'] as int,
      json['type'] as String,
      json['topic'] as String,
      json['response'] as bool,
    );

Map<String, dynamic> _$WebSocketRequestDtoToJson(
        WebSocketRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'topic': instance.topic,
      'response': instance.response,
    };
