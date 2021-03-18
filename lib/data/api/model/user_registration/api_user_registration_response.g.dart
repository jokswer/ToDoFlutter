// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserRegistrationResponse _$ApiUserRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return ApiUserRegistrationResponse(
    json['result'] == null
        ? null
        : ApiUserRegistration.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiUserRegistrationResponseToJson(
        ApiUserRegistrationResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
