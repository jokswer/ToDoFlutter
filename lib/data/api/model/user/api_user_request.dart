import 'package:json_annotation/json_annotation.dart';

part 'api_user_request.g.dart';

@JsonSerializable()
class ApiUserRequest {
  final String email;
  final String password;

  ApiUserRequest({this.email, this.password});

  Map<String, dynamic> toJson() => _$ApiUserRequestToJson(this);
}