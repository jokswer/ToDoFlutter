import 'package:ToDoFlutter/domain/model/user.dart';
import 'package:ToDoFlutter/domain/model/user_registration.dart';

abstract class UserRepository {
  Future<UserRegistration> auth({String email, String password});

  Future<User> login({String email, String password});
}
