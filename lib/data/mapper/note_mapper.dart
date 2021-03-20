import 'package:ToDoFlutter/data/api/model/note/api_note.dart';
import 'package:ToDoFlutter/domain/model/note.dart';

class NoteMapper {
  static Note fromApi(ApiNote note) {
    return Note(
        id: note.id.toInt(),
        done: note.done,
        title: note.title.toString(),
        body: note.body.toString());
  }
}
