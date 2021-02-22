import 'package:ToDoFlutter/data/api/model/user/ApiUser.dart';
import 'package:ToDoFlutter/domain/model/User.dart';

class UserMapper {
  static User fromApi(ApiUser user) {
    return User(
        id: user.id.toString(),
        ttl: user.ttl.toInt(),
        userId: user.userId.toInt(),
        created: DateTime.tryParse(user.created.toString()));
  }
}
