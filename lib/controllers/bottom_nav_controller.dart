import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lookbook/views/designer/addproduct_screen.dart';
import 'package:lookbook/views/designer/home_screnn.dart';

import '../views/Admin/Conversations/admin_allconversation_screen.dart';
import '../views/Admin/Designers/all_Designers_screen.dart';
import '../views/Admin/admin_dashboard_screen.dart';
import '../views/Admin/admin_notification_screen.dart';
import '../views/Admin/admin_profile_screen.dart';
import '../views/Customer/Customer_Profile_Screen.dart';
import '../views/Customer/customer_Notification_Screen.dart';
import '../views/Customer/customer_all_conversation_screen.dart';
import '../views/Customer/customer_dashboard_screen.dart';
import '../views/Designer/notification_screen.dart';
import '../views/Designer/profile_screen.dart';


class DesignerBottomNavController extends GetxController {
  var selectedIndex = 0.obs;
  final PageController pageController = PageController();

  final List<Widget> screens = [
    const DesignerHomeScreen(),
    const AddProductScreen(),
    const NotificationScreen(),
    ProfileScreen(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}

class AdminBottomNavController extends GetxController {
  var selectedIndex = 0.obs;
  final PageController pageController = PageController();
  final List<Widget> screens = [
    const AdminDashboardScreen(),
    const AdminAllConversationScreen(),
    const AdminNotificationScreen(),
    const AdminProfileScreen(),
  ];
  void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}

class CustomerBottomNavController extends GetxController {
  var selectedIndex = 0.obs;
  final PageController pageController = PageController();

  final List<Widget> screens = [
    const CustomerDashboardScreen(),
    const CustomerAllConversationScreen(),
    const CustomerNotificationScreen(),
    const CustomerProfileScreen(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}
