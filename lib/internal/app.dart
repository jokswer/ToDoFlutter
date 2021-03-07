import 'package:ToDoFlutter/routes/paths.dart';
import 'package:ToDoFlutter/routes/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: authorization,
      routes: Map.fromEntries(
          routes.map((route) => MapEntry(route.route, route.builder))),
    );
  }
}
