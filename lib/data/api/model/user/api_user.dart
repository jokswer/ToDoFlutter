import 'package:json_annotation/json_annotation.dart';

part 'api_user.g.dart';

@JsonSerializable()
class ApiUser {
  final String id;
  final int ttl;
  final DateTime created;
  final int userId;

  ApiUser({this.id, this.ttl, this.created, this.userId});

  factory ApiUser.fromJson(Map<String, dynamic> json) => _$ApiUserFromJson(json);
}