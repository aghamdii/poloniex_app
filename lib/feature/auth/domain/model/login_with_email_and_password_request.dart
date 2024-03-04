import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_with_email_and_password_request.freezed.dart';

@freezed
class LoginWithEmailAndPasswordRequest with _$LoginWithEmailAndPasswordRequest {
  const factory LoginWithEmailAndPasswordRequest({
    required String email,
    required String password,
  }) = _LoginWithEmailAndPasswordRequest;
}
