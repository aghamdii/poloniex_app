import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/login_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/model/register_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/model/user.dart';
import 'package:poloniex_app/feature/auth/domain/model/user_session.dart';
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:poloniex_app/feature/auth/infrastructure/data_source/auth_local_data_source.dart';
import 'package:poloniex_app/feature/auth/infrastructure/data_source/auth_mock_remote_data_source.dart';
import 'package:poloniex_app/feature/auth/infrastructure/dto/user_dto.dart';
import 'package:poloniex_app/feature/auth/infrastructure/mapper/user_dto_mapper.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._authMockRemoteDataSource,
    this._authLocalDataSource,
    this._userDtoMapper,
  );

  final AuthMockRemoteDataSource _authMockRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;
  final UserDtoMapper _userDtoMapper;

  @override
  Future<User> loginWithEmailAndPassword(
    LoginWithEmailAndPasswordRequest request,
  ) async {
    try {
      final res = await _authMockRemoteDataSource.loginWithEmailAndPassword(
        request.email,
        request.password,
      );

      updateUserSession(
        UserSession(
          accessToken: 'access_token',
          refreshToken: 'refresh_token',
        ),
      );

      final dto = UserDto.fromJson(res);
      return _userDtoMapper.map(dto);
    } catch (e) {
      throw Exception('Error thronw in login');
    }
  }

  @override
  Future<User> registerWithEmailAndPassword(
      RegisterWithEmailAndPasswordRequest request) async {
    try {
      final res = await _authMockRemoteDataSource.registerWithEmailAndPassword(
        request.email,
        request.password,
      );

      updateUserSession(
        UserSession(
          accessToken: 'access_token',
          refreshToken: 'refresh_token',
        ),
      );

      final dto = UserDto.fromJson(res);
      return _userDtoMapper.map(dto);
    } catch (e) {
      throw Exception('Error thronw in registration');
    }
  }

  @override
  Future<UserSession> getUserSession() => _authLocalDataSource.getUserSession();

  @override
  Future<void> updateUserSession(UserSession userSession) =>
      _authLocalDataSource.updateUserSession(
        userSession.accessToken,
        userSession.refreshToken,
      );
  @override
  Future<void> clearUserSession() => _authLocalDataSource.clearUserSession();
}
