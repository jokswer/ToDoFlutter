import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/title.dart';

class AuthorizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Title(),
            TextField(
              decoration: InputDecoration(labelText: 'email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'password'),
            ),
            TextButton(
                onPressed: null,
                child: Container(
                  child: Text('sdsd'),
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                )),
            TextButton(
                onPressed: null, child: Text('sdsd'))
          ],
        ),
      ),
    );
  }
}
