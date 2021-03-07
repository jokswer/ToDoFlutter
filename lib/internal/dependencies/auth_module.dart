import 'package:ToDoFlutter/domain/state/auth_state.dart';
import 'package:ToDoFlutter/internal/dependencies/repository_module.dart';

class AuthModule {
  static AuthState authState() {
    return AuthState(RepositoryModule.userRepository());
  }
}
