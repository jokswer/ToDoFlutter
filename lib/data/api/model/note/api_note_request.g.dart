// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiNoteRequest _$ApiNoteRequestFromJson(Map<String, dynamic> json) {
  return ApiNoteRequest(
    title: json['title'] as String,
    body: json['body'] as String,
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$ApiNoteRequestToJson(ApiNoteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'done': instance.done,
    };
