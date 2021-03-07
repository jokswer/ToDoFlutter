import 'package:ToDoFlutter/data/api/model/user/api_user_request.dart';
import 'package:ToDoFlutter/data/api/model/user/api_user_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:3011/api/Users')
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @POST('')
  Future<ApiUserResponse> auth(@Body() ApiUserRequest body);

  @POST('/login')
  Future<ApiUserResponse> login(@Body() ApiUserRequest body);
}
