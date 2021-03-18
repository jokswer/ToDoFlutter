// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserRegistrationResponse _$ApiUserRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return ApiUserRegistrationResponse(
    email: json['email'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$ApiUserRegistrationResponseToJson(
        ApiUserRegistrationResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
    };
