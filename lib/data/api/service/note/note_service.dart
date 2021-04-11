import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:ToDoFlutter/data/api/model/note/api_note_request.dart';
import 'package:ToDoFlutter/data/api/model/note/api_note_response.dart';

part 'note_service.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:3000/api/tasks')
abstract class NoteService {
  factory NoteService(Dio dio, {String baseUrl}) = _NoteService;

  @POST('')
  Future<ApiNoteResponse> create(
      @Header('access_token') String token, @Body() ApiNoteRequest body);

  @DELETE('/{id}')
  Future<void> delete(@Header('access_token') String token, @Path() int id);

  @PUT('')
  Future<ApiNoteResponse> edit(
      @Header('access_token') String token, @Body() ApiNoteRequest body);

  @GET('')
  Future<List<ApiNoteResponse>> receive(@Header('access_token') String token);
}
