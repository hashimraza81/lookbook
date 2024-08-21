import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
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
                20.ph,
                reusedButton(
                  icon: Icons.arrow_forward_outlined,
                  text: 'DESIGNER',
                  ontap: () {
                    Get.toNamed('signup');
                  },
                  color: AppColors.secondary,
                ),
                15.ph,
                reusedButton(
                  icon: Icons.arrow_forward_outlined,
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
