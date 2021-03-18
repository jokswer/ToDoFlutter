import 'package:ToDoFlutter/data/api/model/user/api_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_user_response.g.dart';

@JsonSerializable()
class ApiUserResponse {
  final String id;
  final int ttl;
  final DateTime created;
  final int userId;
  
  @JsonKey(ignore: true)
  ApiUser result;

  ApiUserResponse(this.id, this.ttl, this.created, this.userId) {
    result = ApiUser(id: id, ttl: ttl, created: created, userId: userId);
  }

  factory ApiUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiUserResponseFromJson(json);
}
