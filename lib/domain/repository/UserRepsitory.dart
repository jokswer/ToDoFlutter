import 'package:ToDoFlutter/domain/model/User.dart';

abstract class UserRepository {
  Future<User> auth({String email, String password});

  Future<User> login({String email, String password});
}
