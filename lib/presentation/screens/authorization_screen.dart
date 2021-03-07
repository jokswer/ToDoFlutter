import 'package:ToDoFlutter/internal/dependencies/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/button.dart';
import 'package:ToDoFlutter/presentation/components/input.dart';
import 'package:ToDoFlutter/presentation/components/app_title.dart';
import 'package:ToDoFlutter/domain/state/auth_state.dart';
import 'package:ToDoFlutter/routes/paths.dart';

class AuthorizationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthorizationState();
  }
}

class _AuthorizationState extends State<AuthorizationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthState _authState;

  @override
  void initState() {
    super.initState();
    _authState = AuthModule.authState();
  }

  void _auth() {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    _authState.auth(email: email, password: password);
  }

  void _navigateToRegisration(BuildContext context) {
    Navigator.pushNamed(context, registration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppTitle(),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
              child: Input(
                controller: _emailController,
                labelText: 'email',
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 50, right: 50),
              child: Input(
                controller: _passwordController,
                labelText: 'password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            Button(
              onPressed: _auth,
              title: 'Авторизоваться',
            ),
            TextButton(
                onPressed: () {
                  _navigateToRegisration(context);
                },
                child: const Text('Нет аккаунта?'))
          ],
        ),
      ),
    );
  }
}
