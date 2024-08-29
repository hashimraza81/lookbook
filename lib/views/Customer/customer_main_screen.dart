import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/bottom_nav_controller.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/dashboard_custom_app_bar.dart';
import '../../utils/components/customer_custom_bottom_navigation_bar.dart';
import 'QR_Scanner_Screen.dart';

class CustomerMainScreen extends StatefulWidget {
  const CustomerMainScreen({super.key});

  @override
  State<CustomerMainScreen> createState() => _CustomerMainScreenState();
}

class _CustomerMainScreenState extends State<CustomerMainScreen> {
  final CustomerBottomNavController bottomNavController =
      Get.put(CustomerBottomNavController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.h),
          child: DashboardCustomAppBar(),
        ),
        body: Column(
          children: [
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => QRScannerScreen());
          },
          backgroundColor: AppColors.secondary,
          shape: const CircleBorder(),
          child: Icon(Icons.qr_code_scanner, color: Colors.white),
        ),
        bottomNavigationBar: Obx(() {
          return CustomerCustomBottomNavigationBar(
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
