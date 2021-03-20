import 'package:ToDoFlutter/domain/model/note.dart';

abstract class NotesRepository {
  Future<Note> create({String title, String body, bool done});

  Future<void> delete({int id});

  Future<Note> edit({String title, String body, bool done, int id});
}
