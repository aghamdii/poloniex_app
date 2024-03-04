import 'package:poloniex_app/feature/auth/domain/model/login_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/model/register_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/model/user.dart';
import 'package:poloniex_app/feature/auth/domain/model/user_session.dart';

abstract class AuthRepository {
  Future<User> loginWithEmailAndPassword(
    LoginWithEmailAndPasswordRequest request,
  );

  Future<User> registerWithEmailAndPassword(
    RegisterWithEmailAndPasswordRequest request,
  );

  Future<UserSession> getUserSession();

  Future<void> updateUserSession(UserSession userSession);

  Future<void> clearUserSession();
}
