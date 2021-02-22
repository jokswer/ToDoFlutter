import 'package:ToDoFlutter/data/api/service/user/UserService.dart';
import 'package:ToDoFlutter/data/repository/UserDataRepository.dart';
import 'package:ToDoFlutter/domain/repository/UserRepsitory.dart';
import 'package:dio/dio.dart';

class RepositoryModule {
  static UserRepository _userRepository;

  static UserRepository userRepository() {
    _userRepository ??= UserDataRepository(UserService(Dio()));
    return _userRepository;
  }
}
