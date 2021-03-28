import 'package:dio/dio.dart';
import 'package:ToDoFlutter/data/api/service/note/note_service.dart';
import 'package:ToDoFlutter/data/api/service/user/user_service.dart';
import 'package:ToDoFlutter/data/repository/notes_data_repository.dart';
import 'package:ToDoFlutter/data/repository/user_data_repository.dart';
import 'package:ToDoFlutter/domain/repository/notes_repository.dart';
import 'package:ToDoFlutter/domain/repository/user_repository.dart';

class RepositoryModule {
  static UserRepository _userRepository;
  static NotesRepository _notesRepository;
  static final Dio _dio = Dio();
  
  static UserRepository userRepository() {
    _userRepository ??= UserDataRepository(UserService(_dio));
    return _userRepository;
  }

  static NotesRepository notesRepository() {
    _notesRepository ??= NotesDataReposytory(NoteService(_dio));
    return _notesRepository;
  }
}
