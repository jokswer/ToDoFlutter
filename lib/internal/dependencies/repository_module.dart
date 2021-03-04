import 'package:ToDoFlutter/data/api/service/user/user_service.dart';
import 'package:ToDoFlutter/data/repository/user_data_repository.dart';
import 'package:ToDoFlutter/domain/repository/user_repsitory.dart';
import 'package:dio/dio.dart';

class RepositoryModule {
  static UserRepository _userRepository;

  static UserRepository userRepository() {
    _userRepository ??= UserDataRepository(UserService(Dio()));
    return _userRepository;
  }
}
