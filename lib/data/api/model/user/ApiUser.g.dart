// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUser _$ApiUserFromJson(Map<String, dynamic> json) {
  return ApiUser(
    id: json['id'] as String,
    ttl: json['ttl'] as int,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$ApiUserToJson(ApiUser instance) => <String, dynamic>{
      'id': instance.id,
      'ttl': instance.ttl,
      'created': instance.created?.toIso8601String(),
      'userId': instance.userId,
    };
