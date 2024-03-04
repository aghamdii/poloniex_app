import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  UserDto(
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
  );

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(
        json,
      );

  final String? uuid;
  final String? firstName;
  final String? lastName;
  final String? email;
}
