import 'package:ToDoFlutter/data/api/model/user_registration/api_user_registration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_user_registration_response.g.dart';

@JsonSerializable()
class ApiUserRegistrationResponse {
  final ApiUserRegistration result;

  ApiUserRegistrationResponse(this.result);

  factory ApiUserRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiUserRegistrationResponseFromJson(json);
}