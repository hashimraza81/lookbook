import 'package:get/get_utils/src/get_utils/get_utils.dart';

class ValidationService {
  // sign in screen

  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Email can't be empty";
    } else if (!GetUtils.isEmail(email)) {
      return "Enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Password can't be empty";
    } else if (password.length < 8) {
      return "Password must be at least 8 characters long";
    } else if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(password)) {
      return "Password must contain at least one uppercase letter";
      // } else if (!RegExp(r'^(?=.*?[a-z])').hasMatch(password)) {
      //   return "Password must contain at least one lowercase letter";
    } else if (!RegExp(r'^(?=.*?[0-9])').hasMatch(password)) {
      return "Password must contain at least one digit";
    } else if (!RegExp(r'^(?=.*?[!@#\$&*~.])').hasMatch(password)) {
      return "Password must contain at least one special character";
    }
    return null;
  }
}
