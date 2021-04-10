import 'package:ToDoFlutter/domain/state/notes_state.dart';
import 'package:ToDoFlutter/internal/dependencies/repository_module.dart';
import 'package:ToDoFlutter/routes/paths.dart';
import 'package:ToDoFlutter/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ToDoFlutter/domain/state/auth_state.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<AuthState>(
              create: (_) => AuthState(RepositoryModule.userRepository())),
          Provider<NotesState>(
              create: (_) => NotesState(RepositoryModule.notesRepository())),
        ],
        child: MaterialApp(
          initialRoute: authorization,
          routes: Map.fromEntries(
              routes.map((route) => MapEntry(route.route, route.builder))),
        ));
  }
}
