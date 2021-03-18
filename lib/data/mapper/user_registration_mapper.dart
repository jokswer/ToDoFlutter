import 'package:ToDoFlutter/data/api/model/user_registration/api_user_registration.dart';
import 'package:ToDoFlutter/domain/model/user_registration.dart';

class UserRegistrationMapper {
  static UserRegistration fromApi(ApiUserRegistration userRegistration) {
    return UserRegistration(
        id: userRegistration.id.toInt(),
        email: userRegistration.email.toString()
    );
  }
}