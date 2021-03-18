import 'package:mobx/mobx.dart';

import 'package:ToDoFlutter/domain/model/user.dart';
import 'package:ToDoFlutter/domain/repository/user_repository.dart';

part 'auth_state.g.dart';

class AuthState = AuthStateBase with _$AuthState;

abstract class AuthStateBase with Store {
  final UserRepository _userRepository;

  AuthStateBase(this._userRepository);

  @observable
  bool isAuthLoading = false;

  @observable
  bool isLoginLoading = false;

  @observable
  User user;

  @action
  Future<void> auth({String email, String password}) async {
    try {
      isAuthLoading = true;

      await _userRepository.auth(email: email, password: password);

    } catch (e) {
      print(e);
    } finally {
      isAuthLoading = false;
    }
  }

  @action
  Future<void> login({String email, String password}) async {
    try {
      isLoginLoading = true;

      final User data =
          await _userRepository.login(email: email, password: password);

      user = data;
    } catch (e) {
      print(e);
    } finally {
      isLoginLoading = false;
    }
  }
}
