import 'package:mobx/mobx.dart';

import 'package:ToDoFlutter/domain/model/user.dart';
import 'package:ToDoFlutter/domain/repository/user_repsitory.dart';

part 'auth_state.g.dart';

class AuthState = AuthStateBase with _$AuthState;

abstract class AuthStateBase with Store {
  final UserRepository _userRepository;

  AuthStateBase(this._userRepository);

  @observable
  bool isLoading = false;

  @observable
  User user;

  @action
  Future<void> auth({String email, String password}) async {
    try {
      isLoading = true;

      await _userRepository.auth(email: email, password: password);
      
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> login({String email, String password}) async {
    try {
      isLoading = true;

      final User data =
          await _userRepository.login(email: email, password: password);

      user = data;
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
    }
  }
}
