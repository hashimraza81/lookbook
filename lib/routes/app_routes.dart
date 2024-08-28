import 'package:get/get.dart';
import 'package:lookbook/utils/components/custom_menu.dart';
import 'package:lookbook/views/Designer/addproduct_screen.dart';
import 'package:lookbook/views/authentication/create_with_screen.dart';
import 'package:lookbook/views/authentication/forgot_password_screen.dart';
import 'package:lookbook/views/authentication/sign_in_screen.dart';
import 'package:lookbook/views/authentication/sign_up_screen.dart';
import 'package:lookbook/views/designer/add_photographer_screen.dart';
import 'package:lookbook/views/designer/addproduct_screen1.dart';
import 'package:lookbook/views/designer/product_detail.dart';
import 'package:lookbook/views/welcomeScreen.dart';

import '../views/Customer/customer_product_detail_screen.dart';
import '../views/Designer/home_screnn.dart';

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
    ),
    GetPage(
      name: '/addProduct',
      page: () => const AddProductScreen(),
    ),
    GetPage(
      name: '/menu',
      page: () => const CustomMenu(),
    ),
    GetPage(
      name: '/addProduct1',
      page: () => AddproductScreen1(),
    ),
    GetPage(
      name: '/addPhotographer',
      page: () => AddPhotographerScreen(),
    ),
    GetPage(
      name: '/productDetail',
      page: () => ProductDetail(),
    ),
    GetPage(
      name: '/home',
      page: () => const DesignerHomeScreen(),
    ),
    GetPage(
      name: '/CustomerProductDetailScreen',
      page: () => const CustomerProductDetailScreen(),
    ),
  ];
}
