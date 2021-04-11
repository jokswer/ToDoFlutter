import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ToDoFlutter/routes/paths.dart';
import 'package:ToDoFlutter/domain/state/auth_state.dart';
import 'package:ToDoFlutter/presentation/components/button.dart';
import 'package:ToDoFlutter/presentation/components/input.dart';
import 'package:ToDoFlutter/presentation/components/app_title.dart';
import 'package:provider/provider.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationState();
  }
}

class _RegistrationState extends State<RegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _auth(BuildContext context) {
    final AuthState authState = Provider.of<AuthState>(context, listen: false);

    final String email = _emailController.text;
    final String password = _passwordController.text;

    authState.auth(email: email, password: password).then((bool result) {
      if (result)
        Navigator.pushNamedAndRemoveUntil(context, notes, (_) => false);
    });
  }

  void _navigateToAuthorization(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final AuthState authState = Provider.of<AuthState>(context);

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
            Observer(builder: (_) {
              if (authState.isAuthLoading)
                return const CircularProgressIndicator();

              return Button(
                onPressed: () {
                  _auth(context);
                },
                title: 'Зарегистрироваться',
              );
            }),
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
