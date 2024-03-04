import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/infrastructure/mapper/data_mapper.dart';
import 'package:poloniex_app/feature/auth/domain/model/user.dart';
import 'package:poloniex_app/feature/auth/infrastructure/dto/user_dto.dart';

@inject
class UserDtoMapper extends DataMapper<UserDto, User> {
  @override
  User map(UserDto data) {
    return User(
      uuid: data.uuid ?? '',
      firstName: data.firstName ?? '',
      lastName: data.lastName ?? '',
      email: data.email ?? '',
    );
  }
}
