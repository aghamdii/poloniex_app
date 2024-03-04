import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/user_session.dart';
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart';

@inject
class GetUserSessionUseCase {
  GetUserSessionUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<UserSession> call() => _authRepository.getUserSession();
}
