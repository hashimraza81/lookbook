import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import 'package:lookbook/utils/components/admin_custom_bottom_navigation_bar.dart';

import '../../../utils/components/Custom_dialog.dart';
import '../../../utils/components/build_links.dart';
import '../../../utils/components/constant/app_colors.dart';
import '../../../utils/components/constant/app_images.dart';
import '../../../utils/components/constant/app_textstyle.dart';
import '../../../utils/components/custom_app_bar.dart';

class DesignerDetailsScreen extends StatefulWidget {
  const DesignerDetailsScreen({super.key});

  @override
  State<DesignerDetailsScreen> createState() => _DesignerDetailsScreenState();
}

class _DesignerDetailsScreenState extends State<DesignerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            20.ph,
            SizedBox(
              height: 72.h,
              width: 430.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'JHONE LANE',
                    style: tSStyleBlack18400,
                  ),
                  SvgPicture.asset(
                    AppImages.line,
                    width: 124.w,
                    height: 20.h,
                    color: AppColors.text1,
                  ),
                ],
              ),
            ),
            10.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.cyan,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        AppImages.photographer,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  19.ph,
                  SizedBox(
                    height: 285.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'JHONE',
                          style: tSStyleBlack16400,
                        ),
                        Text(
                          'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products.',
                          style: tSStyleBlack12400.copyWith(
                            color: AppColors.text1,
                          ),
                        ),
                        BuildLinks(
                          image: AppImages.phone,
                          ontap: () {},
                          text: '+49 40 60774609',
                        ),
                        BuildLinks(
                          image: AppImages.mail,
                          ontap: () {},
                          text: 'info@eternal-vitality.de',
                        ),
                        BuildLinks(
                          image: AppImages.social,
                          ontap: () {},
                          text: '@Instagram/designer',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                    width: 162.w,
                    child: ElevatedButton(
                      onPressed: () {
                        showCustomDialog(context,
                            title: 'Sure you want to block?',
                            message: 'Are you sure you want to block this?');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Block'),
                          Icon(
                            Icons.east,
                            color: AppColors.white,
                            size: 18,
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.red,
                        foregroundColor: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
