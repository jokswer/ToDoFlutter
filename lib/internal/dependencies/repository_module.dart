import 'package:ToDoFlutter/data/api/service/user/user_service.dart';
import 'package:ToDoFlutter/data/repository/user_data_repository.dart';
import 'package:ToDoFlutter/domain/repository/user_repository.dart';
import 'package:dio/dio.dart';

class RepositoryModule {
  static UserRepository _userRepository;
  static final Dio _dio = Dio();

  static UserRepository userRepository() {
    _userRepository ??= UserDataRepository(UserService(_dio));
    return _userRepository;
  }
}
