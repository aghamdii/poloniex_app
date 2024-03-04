import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_with_email_and_password_request.freezed.dart';

@freezed
class RegisterWithEmailAndPasswordRequest
    with _$RegisterWithEmailAndPasswordRequest {
  const factory RegisterWithEmailAndPasswordRequest({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) = _RegisterWithEmailAndPasswordRequest;
}
