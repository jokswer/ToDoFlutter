import 'package:json_annotation/json_annotation.dart';

part 'api_user_registration_request.g.dart';

@JsonSerializable()
class ApiUserRegistrationRequest {
  final String email;
  final String password;

  ApiUserRegistrationRequest({this.email, this.password});

  Map<String, dynamic> toJson() => _$ApiUserRegistrationRequestToJson(this);
}