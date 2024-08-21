import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/custom_bottom_navigation_bar.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 26.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppImages.menu,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'LOOK',
                        style: aStyleBlack18600,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60.w),
                        child: Text(
                          'BOOK',
                          style: aStyleBlack18600,
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Text(
                  'ADD PRODUCT',
                  style: tSStyleBlack18400,
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  AppImages.line,
                  width: 150.w,
                  height: 15.h,
                  color: AppColors.text1,
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: SvgPicture.asset(
                  AppImages.shopping,
                  width: 192.w,
                  height: 192.h,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
