import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';
import 'package:lookbook/utils/components/constant/app_images.dart';
import 'package:lookbook/utils/components/constant/app_textstyle.dart';
import 'package:lookbook/utils/components/reusedbutton.dart';

class CreateWithScreen extends StatelessWidget {
  const CreateWithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppImages.splash,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 40.0.h,
              horizontal: 24.0.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'CREATE WITH',
                    style: aStyleBlack48400,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                reusedButton(
                  text: 'DESIGNER',
                  ontap: () {
                    Get.toNamed('signup');
                  },
                  color: AppColors.secondary,
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                reusedButton(
                  text: 'CUSTOMER',
                  ontap: () {
                    Get.toNamed('signup');
                  },
                  color: AppColors.greylight,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
