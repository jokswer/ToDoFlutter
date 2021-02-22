import 'package:flutter/material.dart';

import 'package:ToDoFlutter/presentation/Authorization.dart';
import 'package:ToDoFlutter/presentation/Notes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('title'),),
        body: false ? AuthorizationScreen() : NotesScreen(),
      ),
    );
  }

}