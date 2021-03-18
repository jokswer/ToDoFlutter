// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserRegistrationRequest _$ApiUserRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return ApiUserRegistrationRequest(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$ApiUserRegistrationRequestToJson(
        ApiUserRegistrationRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
