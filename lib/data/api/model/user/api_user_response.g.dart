// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserResponse _$ApiUserResponseFromJson(Map<String, dynamic> json) {
  return ApiUserResponse(
    json['id'] as String,
    json['ttl'] as int,
    json['created'] == null ? null : DateTime.parse(json['created'] as String),
    json['userId'] as int,
  );
}

Map<String, dynamic> _$ApiUserResponseToJson(ApiUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ttl': instance.ttl,
      'created': instance.created?.toIso8601String(),
      'userId': instance.userId,
    };
