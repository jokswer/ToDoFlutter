// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiNoteResponse _$ApiNoteResponseFromJson(Map<String, dynamic> json) {
  return ApiNoteResponse(
    json['id'] as int,
    json['title'] as String,
    json['body'] as String,
    json['done'] as bool,
  );
}

Map<String, dynamic> _$ApiNoteResponseToJson(ApiNoteResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'done': instance.done,
      'id': instance.id,
    };
