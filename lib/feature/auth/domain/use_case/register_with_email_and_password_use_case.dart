import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/register_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/model/user.dart';
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart';

@inject
class RegisterWithEmailAndPasswordUseCase {
  RegisterWithEmailAndPasswordUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<User> call(RegisterWithEmailAndPasswordRequest request) =>
      _authRepository.registerWithEmailAndPassword(
        request,
      );
}
