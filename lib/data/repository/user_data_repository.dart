import 'package:ToDoFlutter/data/api/model/user/api_user_request.dart';
import 'package:ToDoFlutter/data/api/model/user/api_user_response.dart';
import 'package:ToDoFlutter/data/api/model/user_registration/api_user_registration_request.dart';
import 'package:ToDoFlutter/data/api/model/user_registration/api_user_registration_response.dart';
import 'package:ToDoFlutter/data/api/service/user/user_service.dart';
import 'package:ToDoFlutter/data/mapper/user_mapper.dart';
import 'package:ToDoFlutter/data/mapper/user_registration_mapper.dart';
import 'package:ToDoFlutter/domain/model/user.dart';
import 'package:ToDoFlutter/domain/model/user_registration.dart';
import 'package:ToDoFlutter/domain/repository/user_repository.dart';

class UserDataRepository extends UserRepository {
  final UserService _service;

  UserDataRepository(this._service);

  @override
  Future<UserRegistration> auth({String email, String password}) async {
    final ApiUserRegistrationRequest request = ApiUserRegistrationRequest(
      email: email,
      password: password,
    );

    final ApiUserRegistrationResponse response = await _service.auth(request);

    return UserRegistrationMapper.fromApi(response.result);
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
