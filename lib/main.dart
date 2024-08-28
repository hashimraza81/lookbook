import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lookbook/core/app_theme.dart';
import 'package:lookbook/routes/app_routes.dart';
import 'package:lookbook/views/Admin/admin_dashboard_screen.dart';
import 'package:lookbook/views/Admin/admin_main_screen.dart';
import 'package:lookbook/views/Customer/customer_dashboard_screen.dart';
import 'package:lookbook/views/Customer/customer_main_screen.dart';
import 'package:lookbook/views/Designer/designer_main_screen.dart';
import 'package:lookbook/views/Designer/home_screnn.dart';
import 'package:lookbook/views/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 930),
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Look Book',
          theme: AppTheme.lightThemeMode,
          initialRoute: '/',
          getPages: AppRoutes.routes,
          home: CustomerMainScreen(),
        );
      },
    );
  }
}
