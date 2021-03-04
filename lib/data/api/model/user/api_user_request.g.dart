// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserRequest _$ApiUserRequestFromJson(Map<String, dynamic> json) {
  return ApiUserRequest(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$ApiUserRequestToJson(ApiUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
