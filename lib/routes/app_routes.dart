import 'package:get/get.dart';
import 'package:lookbook/views/authentication/create_with_screen.dart';
import 'package:lookbook/views/authentication/forgot_password_screen.dart';
import 'package:lookbook/views/authentication/sign_in_screen.dart';
import 'package:lookbook/views/authentication/sign_up_screen.dart';
import 'package:lookbook/views/welcomeScreen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: '/signin',
      page: () => SignInScreen(),
    ),
    GetPage(
      name: '/createwith',
      page: () => const CreateWithScreen(),
    ),
    GetPage(
      name: '/signup',
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: '/forgot',
      page: () => ForgotPasswordScreen(),
    )
  ];
}
