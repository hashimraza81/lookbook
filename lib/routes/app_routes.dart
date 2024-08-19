import 'package:get/get.dart';
import 'package:lookbook/views/designer/sign_in.dart';
import 'package:lookbook/views/welcomeScreen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: 'welcome',
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: 'signin',
      page: () => const SignInScreen(),
    ),
  ];
}
