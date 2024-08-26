import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lookbook/views/designer/addproduct_screen.dart';
import 'package:lookbook/views/designer/home_screnn.dart';

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
