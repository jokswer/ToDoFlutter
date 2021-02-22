import 'package:ToDoFlutter/data/api/model/user/ApiUserRequest.dart';
import 'package:ToDoFlutter/data/api/model/user/ApiUserResponse.dart';
import 'package:ToDoFlutter/data/api/service/user/UserService.dart';
import 'package:ToDoFlutter/data/mapper/UserMapper.dart';
import 'package:ToDoFlutter/domain/model/User.dart';
import 'package:ToDoFlutter/domain/repository/UserRepsitory.dart';

class UserDataRepository extends UserRepository {
  final UserService _service;

  UserDataRepository(this._service);

  @override
  Future<User> auth({String email, String password}) async {
    final ApiUserRequest request = ApiUserRequest(
      email: email,
      password: password,
    );

    final ApiUserResponse response = await _service.auth(request);

    return UserMapper.fromApi(response.result);
  }

  @override
  Future<User> login({String email, String password}) async {
    final ApiUserRequest request = ApiUserRequest(
      email: email,
      password: password,
    );

    final ApiUserResponse response = await _service.login(request);

    return UserMapper.fromApi(response.result);
  }
}
