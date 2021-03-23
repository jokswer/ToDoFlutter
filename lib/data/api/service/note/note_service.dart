import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ToDoFlutter/data/api/model/note/api_note_request.dart';
import 'package:ToDoFlutter/data/api/model/note/api_note_response.dart';
import 'package:ToDoFlutter/domain/model/note.dart';

part 'note_service.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:3000/api/tasks')
abstract class NoteService {
  factory NoteService(Dio dio, {String baseUrl}) = _NoteService;

  @POST('')
  Future<ApiNoteResponse> create(@Body() ApiNoteRequest body);

  @DELETE('/{id}')
  Future<void> delete(@Path() int id);

  @PUT('')
  Future<ApiNoteResponse> edit(@Body() ApiNoteRequest body);

  @GET('')
  Future<List<ApiNoteResponse>> receive();
}
