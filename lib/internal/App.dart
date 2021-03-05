import 'package:flutter/material.dart';

import 'package:ToDoFlutter/presentation/screens/authorization_screen.dart';
import 'package:ToDoFlutter/presentation/screens/notes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: true ? AuthorizationScreen() : NotesScreen(),
      ),
    );
  }

}