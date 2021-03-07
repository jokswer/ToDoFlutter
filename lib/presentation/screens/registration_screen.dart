import 'package:ToDoFlutter/domain/state/auth_state.dart';
import 'package:ToDoFlutter/internal/dependencies/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/button.dart';
import 'package:ToDoFlutter/presentation/components/input.dart';
import 'package:ToDoFlutter/presentation/components/app_title.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationState();
  }
}

class _RegistrationState extends State<RegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthState _authState;

  @override
  void initState() {
    super.initState();
    _authState = AuthModule.authState();
  }

  void _login() {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    _authState.login(email: email, password: password);
  }

  void _navigateToAuthorization(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppTitle(),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 50, right: 50),
              child: Input(
                labelText: 'email',
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 20, left: 50, right: 50),
              child: Input(
                labelText: 'password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            Button(
              onPressed: _login,
              title: 'Зарегистрироваться',
            ),
            TextButton(
                onPressed: () {
                  _navigateToAuthorization(context);
                },
                child: const Text('Есть аккаунт?'))
          ],
        ),
      ),
    );
  }
}
