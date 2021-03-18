import 'package:json_annotation/json_annotation.dart';

part 'api_user_registration.g.dart';

@JsonSerializable()
class ApiUserRegistration {
  final String email;
  final int id;

  ApiUserRegistration({this.email, this.id});

  factory ApiUserRegistration.fromJson(Map<String, dynamic> json) => _$ApiUserRegistrationFromJson(json);
}