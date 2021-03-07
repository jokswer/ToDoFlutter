import 'package:ToDoFlutter/domain/model/route.dart';
import 'package:ToDoFlutter/presentation/screens/authorization_screen.dart';
import 'package:ToDoFlutter/presentation/screens/note_screen.dart';
import 'package:ToDoFlutter/presentation/screens/notes_screen.dart';
import 'package:ToDoFlutter/presentation/screens/registration_screen.dart';
import 'package:ToDoFlutter/routes/paths.dart';

final List<Route> routes = <Route>[
  Route(
    name: 'Authorization',
    route: authorization,
    builder: (_) => AuthorizationScreen(),
  ),
  Route(
    name: 'Registration',
    route: registration,
    builder: (_) => RegistrationScreen(),
  ),
  Route(
    name: 'Notes',
    route: notes,
    builder: (_) => NotesScreen(),
  ),
  Route(
    name: 'Note',
    route: note,
    builder: (_) => NoteScreen(),
  ),
];