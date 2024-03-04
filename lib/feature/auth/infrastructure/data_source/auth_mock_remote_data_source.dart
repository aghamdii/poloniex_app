import 'package:injecteo/injecteo.dart';

@inject
class AuthMockRemoteDataSource {
  Future<Map<String, dynamic>> loginWithEmailAndPassword(
      String email, String password) {
    return Future.value({
      "uuid": "123456",
      "firstName": "Ahmad",
      "lastName": "Alghamdi",
      "email": "ahmad@gmail.com",
    });
  }

  Future<Map<String, dynamic>> registerWithEmailAndPassword(
      String email, String password) {
    return Future.value({
      "uuid": "123456",
      "firstName": "Ahmad",
      "lastName": "Alghamdi",
      "email": "ahmad@gmail.com",
    });
  }
}
