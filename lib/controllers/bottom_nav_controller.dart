import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lookbook/views/designer/addproduct_screen.dart';
import 'package:lookbook/views/designer/home_screnn.dart';

import '../views/Admin/Designers/all_Designers_screen.dart';
import '../views/Admin/admin_dashboard_screen.dart';
import '../views/Admin/admin_notification_screen.dart';
import '../views/Admin/admin_profile_screen.dart';
import '../views/designer/notification_screen.dart';
import '../views/designer/profile_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> screens = [
    const DesignerHomeScrenn(),
    const AddProductScreen(),
    const NotificationScreen(),
    ProfileScreen(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
    Get.to(screens[index]);
  }
}

class AdminBottomNavController extends GetxController {
  var selectedIndex = 0.obs;
  final PageController pageController = PageController();
  final List<Widget> screens = [
    const AdminDashboardScreen(),
    const AddProductScreen(),
    const AdminNotificationScreen(),
    const AdminProfileScreen(),
  ];
  void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}
