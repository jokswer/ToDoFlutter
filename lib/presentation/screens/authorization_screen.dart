import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/button.dart';
import 'package:ToDoFlutter/presentation/components/input.dart';
import 'package:ToDoFlutter/presentation/components/app_title.dart';

class AuthorizationScreen extends StatelessWidget {
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
            const Button(
              title: 'Авторизоваться',
            ),
            const TextButton(onPressed: null, child: Text('Нет аккаунта?'))
          ],
        ),
      ),
    );
  }
}
