import 'package:ToDoFlutter/data/api/model/user/api_user_request.dart';
import 'package:ToDoFlutter/data/api/model/user/api_user_response.dart';
import 'package:ToDoFlutter/data/api/service/user/user_service.dart';
import 'package:ToDoFlutter/data/mapper/user_mapper.dart';
import 'package:ToDoFlutter/domain/model/user.dart';
import 'package:ToDoFlutter/domain/repository/user_repsitory.dart';

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
