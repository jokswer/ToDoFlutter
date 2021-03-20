// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiNote _$ApiNoteFromJson(Map<String, dynamic> json) {
  return ApiNote(
    id: json['id'] as int,
    body: json['body'] as String,
    done: json['done'] as bool,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$ApiNoteToJson(ApiNote instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'done': instance.done,
    };
