import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lookbook/extension/sizebox_extension.dart';

import '../../../utils/components/admin_custom_bottom_navigation_bar.dart';
import '../../../utils/components/constant/app_colors.dart';
import '../../../utils/components/constant/app_images.dart';
import '../../../utils/components/constant/app_textstyle.dart';
import '../../../utils/components/custom_app_bar.dart';
import 'customer_detail_screen.dart';

class AllCustomersScreen extends StatefulWidget {
  const AllCustomersScreen({super.key});

  @override
  State<AllCustomersScreen> createState() => _AllCustomersScreenState();
}

class _AllCustomersScreenState extends State<AllCustomersScreen> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    ' CUSTOMERS',
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
            SizedBox(
              height: 43.h,
              width: 385.w,
              child: SearchBar(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xFFF8F9FE)),
                leading:
                    Icon(Icons.search, color: Color(0xFF2F3036), size: 30.sp),
                hintText: 'Search...',
              ),
            ),
            20.ph,
            SizedBox(
              width: 385.w,
              height: 78.h,
              child: InkWell(
                onTap: () {
                  Get.to(() => const CustomerDetailScreen ());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F9FE),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30.0.r,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                child: Image.asset(
                                  AppImages.noti,
                                  fit: BoxFit.cover,
                                  width: 60.0.w,
                                  height: 60.0.h,
                                ),
                              ),
                            ),
                            15.pw,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Robert Fox',
                                  style: iStyleBlack13700.copyWith(
                                    color: AppColors.text3,
                                  ),
                                ),
                                Text(
                                  '+49 40 60774609',
                                  style: iStyleBlack15400.copyWith(
                                    color: AppColors.text2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 25.sp,
                          color: Color(0xFFE47F46),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
