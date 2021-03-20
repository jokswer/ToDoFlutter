import 'package:json_annotation/json_annotation.dart';

part 'api_note_request.g.dart';

@JsonSerializable()
class ApiNoteRequest {
  final String title;
  final String body;
  final bool done;

  ApiNoteRequest({this.title, this.body, this.done});

  Map<String, dynamic> toJson() => _$ApiNoteRequestToJson(this);
}
