import 'package:mobx/mobx.dart';
import 'package:ToDoFlutter/domain/repository/notes_repository.dart';
import 'package:ToDoFlutter/domain/model/note.dart';

part 'notes_state.g.dart';

class NotesState = NotesStateBase with _$NotesState;

abstract class NotesStateBase with Store {
  final NotesRepository _notesRepository;

  NotesStateBase(this._notesRepository);

  @observable
  List<Note> notes;

  @action
  Future<void> receive() async {
    try {
      notes = await _notesRepository.receive();
    } catch (e) {
      print('receiveError ${e.toString()}');
    }
  }
}
