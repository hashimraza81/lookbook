import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';

import '../../controllers/bottom_nav_controller.dart';
import 'constant/app_textstyle.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Obx(() {
        return BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: AppColors.secondary,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedLabelStyle: qStyleBlack12500,
        );
      }),
    );
  }
}
