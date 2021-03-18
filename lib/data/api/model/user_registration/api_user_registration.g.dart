// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserRegistration _$ApiUserRegistrationFromJson(Map<String, dynamic> json) {
  return ApiUserRegistration(
    email: json['email'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$ApiUserRegistrationToJson(
        ApiUserRegistration instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
    };
