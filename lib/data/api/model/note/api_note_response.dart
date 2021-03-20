import 'package:ToDoFlutter/data/api/model/note/api_note.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_note_response.g.dart';

@JsonSerializable()
class ApiNoteResponse {
  final String title;
  final String body;
  final bool done;
  final int id;

  @JsonKey(ignore: true)
  ApiNote result;

  ApiNoteResponse(this.id, this.title, this.body, this.done) {
    result = ApiNote(id: id, title: title, body: body, done: done);
  }

  factory ApiNoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiNoteResponseFromJson(json);
}
