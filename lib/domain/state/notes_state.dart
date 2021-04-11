import 'package:mobx/mobx.dart';
import 'package:ToDoFlutter/domain/repository/notes_repository.dart';
import 'package:ToDoFlutter/domain/model/note.dart';

part 'notes_state.g.dart';

class NotesState = NotesStateBase with _$NotesState;

abstract class NotesStateBase with Store {
  final NotesRepository _notesRepository;

  NotesStateBase(this._notesRepository);

  @observable
  ObservableList<Note> notes;

  @observable
  bool listIsLoading = false;

  @action
  Future<void> receive() async {
    try {
      listIsLoading = true;
      notes = ObservableList<Note>.of(await _notesRepository.receive());
    } catch (e) {
      print('receiveError ${e.toString()}');
    } finally {
      listIsLoading = false;
    }
  }

  @action
  Future<bool> create({String title, String body, bool done}) async {
    try {
      await _notesRepository.create(title: title, body: body, done: done);
      await receive();

      return true;
    } catch (e) {
      print('createError ${e.toString()}');
      return false;
    }
  }

  @action
  Future<void> delete({int id}) async {
    try {
      await _notesRepository.delete(id: id);
      await receive();
    } catch (e) {
      print('deleteError ${e.toString()}');
    }
  }
}
