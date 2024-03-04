import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart';

@inject
class ClearUserSessionUseCase {
  ClearUserSessionUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<void> call() => _authRepository.clearUserSession();
}
