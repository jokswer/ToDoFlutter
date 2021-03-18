import 'package:ToDoFlutter/data/api/model/user_registration/api_user_registration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_user_registration_response.g.dart';

@JsonSerializable()
class ApiUserRegistrationResponse {
  final String email;
  final int id;
  
  @JsonKey(ignore: true)
  ApiUserRegistration result;

  ApiUserRegistrationResponse({this.email, this.id}) {
    result = ApiUserRegistration(email: email, id: id);
  }

  factory ApiUserRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiUserRegistrationResponseFromJson(json);
}
