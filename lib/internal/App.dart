import 'package:flutter/material.dart';

import 'package:ToDoFlutter/presentation/authorization_screen.dart'n.dart';
import 'package:ToDoFlutter/presentation/notes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('title'),),
        body: true ? AuthorizationScreen() : NotesScreen(),
      ),
    );
  }

}