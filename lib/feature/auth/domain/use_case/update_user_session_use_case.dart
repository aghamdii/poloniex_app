import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/user_session.dart';
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart';

@inject
class UpdateUserSessionUseCase {
  UpdateUserSessionUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<void> call(UserSession userSession) =>
      _authRepository.updateUserSession(
        userSession,
      );
}
