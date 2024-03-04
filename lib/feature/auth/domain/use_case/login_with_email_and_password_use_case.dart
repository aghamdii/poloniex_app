import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/login_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/model/user.dart';
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart';

@inject
class LoginWithEmailAndPasswordUseCase {
  LoginWithEmailAndPasswordUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<User> call(LoginWithEmailAndPasswordRequest request) =>
      _authRepository.loginWithEmailAndPassword(request);
}
