import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controllers/bottom_nav_controller.dart';
import '../../utils/components/admin_custom_bottom_navigation_bar.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/dashboard_custom_app_bar.dart';
import '../../utils/components/designer_bottom_navigation_bar.dart';
class DesignerMainScreen extends StatefulWidget {
  const DesignerMainScreen({super.key});

  @override
  State<DesignerMainScreen> createState() => _DesignerMainScreenState();
}

class _DesignerMainScreenState extends State<DesignerMainScreen> {
  final DesignerBottomNavController bottomNavController = Get.put(DesignerBottomNavController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          children: [
            DashboardCustomAppBar(),
            Expanded(
              child: PageView(
                controller: bottomNavController.pageController,
                onPageChanged: (index) {
                  bottomNavController.changeIndex(index);
                },
                children: bottomNavController.screens,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(() {
          return DesignerBottomNavigationBar(
            selectedIndex: bottomNavController.selectedIndex.value,
            onTap: (index) {
              bottomNavController.changeIndex(index);
            },
          );
        }),
      ),
    );
  }
}
