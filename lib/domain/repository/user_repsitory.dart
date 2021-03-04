import 'package:ToDoFlutter/domain/model/user.dart';

abstract class UserRepository {
  Future<User> auth({String email, String password});

  Future<User> login({String email, String password});
}
