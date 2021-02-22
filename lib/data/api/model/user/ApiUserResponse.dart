import 'package:ToDoFlutter/data/api/model/user/ApiUser.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiUserResponse.g.dart';

@JsonSerializable()
class ApiUserResponse {
  final ApiUser result;

  ApiUserResponse(this.result);

  factory ApiUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiUserResponseFromJson(json);
}