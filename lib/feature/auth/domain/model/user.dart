import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String uuid,
    required String firstName,
    required String lastName,
    required String email,
  }) = _User;
}
