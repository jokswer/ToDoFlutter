import 'package:json_annotation/json_annotation.dart';

part 'ApiUserRequest.g.dart';

@JsonSerializable()
class ApiUserRequest {
  final String email;
  final String password;

  ApiUserRequest({this.email, this.password});

  Map<String, dynamic> toJson() => _$ApiUserRequestoToJson(this);
}