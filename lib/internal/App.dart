import 'package:flutter/material.dart';

import 'package:ToDoFlutter/presentation/screens/authorization_screen.dart';
import 'package:ToDoFlutter/presentation/screens/notes_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: false ? AuthorizationScreen() : NotesScreen(),
      ),
    );
  }
}
