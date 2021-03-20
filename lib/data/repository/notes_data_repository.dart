import 'package:ToDoFlutter/data/api/service/note/note_service.dart';
import 'package:ToDoFlutter/domain/model/note.dart';
import 'package:ToDoFlutter/domain/repository/notes_repository.dart';

class NotesDataReposytory extends NotesRepository {
  final NoteService _service;

  NotesDataReposytory(this._service);

  @override
  Future<Note> create({String title, String body, bool done}) {
      // TODO: implement create
      throw UnimplementedError();
    }
  
    @override
    Future<void> delete({int id}) {
      // TODO: implement delete
      throw UnimplementedError();
    }
  
    @override
    Future<Note> edit({String title, String body, bool done, int id}) {
    // TODO: implement edit
    throw UnimplementedError();
  }
  
}