// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiUserResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserResponse _$ApiUserResponseFromJson(Map<String, dynamic> json) {
  return ApiUserResponse(
    json['result'] == null
        ? null
        : ApiUser.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiUserResponseToJson(ApiUserResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
