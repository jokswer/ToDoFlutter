import 'package:ToDoFlutter/data/api/model/note/api_note_request.dart';
import 'package:ToDoFlutter/data/api/model/note/api_note_response.dart';
import 'package:ToDoFlutter/data/api/service/note/note_service.dart';
import 'package:ToDoFlutter/data/mapper/note_mapper.dart';
import 'package:ToDoFlutter/domain/model/note.dart';
import 'package:ToDoFlutter/domain/repository/notes_repository.dart';

String token =
    'yqn0zxmog1nrc3iIDRrntEqpu8D5YbqizxczSB28z4U7n1kR5YcD7kE9F529q2Q5';

class NotesDataReposytory extends NotesRepository {
  final NoteService _service;

  NotesDataReposytory(this._service);

  @override
  Future<Note> create({String title, String body, bool done}) async {
    final ApiNoteRequest request =
        ApiNoteRequest(title: title, body: body, done: done);

    final ApiNoteResponse response = await _service.create(token, request);

    return NoteMapper.fromApi(response.result);
  }

  @override
  Future<void> delete({int id}) async {
    await _service.delete(token, id);
  }

  @override
  Future<Note> edit({String title, String body, bool done, int id}) async {
    final ApiNoteRequest request =
        ApiNoteRequest(title: title, body: body, done: done);

    final ApiNoteResponse response = await _service.edit(token, request, id);

    return NoteMapper.fromApi(response.result);
  }

  @override
  Future<List<Note>> receive() async {
    final List<ApiNoteResponse> response = await _service.receive(token);

    return response
        .map((ApiNoteResponse e) => NoteMapper.fromApi(e.result))
        .toList();
  }
}
