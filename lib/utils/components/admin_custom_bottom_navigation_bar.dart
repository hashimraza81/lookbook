import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';
import 'package:lookbook/utils/components/constant/app_images.dart';

import 'constant/app_textstyle.dart';

class AdminCustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  AdminCustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.homeIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.messageIcon),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.notificationIcon),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.profileIcon),
            label: 'Profile',
          ),
        ],
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: qStyleBlack12500,
      ),
    );
  }
}
