import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_session.freezed.dart';

@freezed
class UserSession with _$UserSession {
  factory UserSession({
    required String accessToken,
    required String refreshToken,
  }) = _UserSession;
}
