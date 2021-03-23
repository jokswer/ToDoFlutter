import 'package:ToDoFlutter/domain/state/notes_state.dart';
import 'package:ToDoFlutter/internal/dependencies/repository_module.dart';

class NotesModule {
  static NotesState notesState() {
    return NotesState(RepositoryModule.notesRepository());
  }
}
