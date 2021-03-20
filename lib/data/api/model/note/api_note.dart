import 'package:json_annotation/json_annotation.dart';

part 'api_note.g.dart';

@JsonSerializable()
class ApiNote {
  final int id;
  final String title;
  final String body;
  final bool done;

  ApiNote({this.id, this.body, this.done, this.title});

  factory ApiNote.fromJson(Map<String, dynamic> json) =>
      _$ApiNoteFromJson(json);
}
