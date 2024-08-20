import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';
import 'package:lookbook/utils/components/reusedbutton.dart';
import 'package:lookbook/utils/components/textfield.dart';

import '../../controllers/forgot_password_screen_controller.dart';
import '../../utils/components/constant/app_textstyle.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final ForgotPasswordController controller =
      Get.put(ForgotPasswordController());

  final FocusNode forgotFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(
          // horizontal: 5.0.w,
          vertical: 10.0.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgot Password',
                style: aStyleBlack32400.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                'Enter your email for the verification proccesss, we will send you a email on your email.',
                style: tSStyleBlack16400,
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Text(
                'Email',
                style: tSStyleBlack16400.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              textfield(
                text: 'Type Email',
                toHide: false,
                controller: controller.forgotPasswordController,
                focusNode: forgotFocusNode,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Obx(
                () => reusedButton(
                  text: 'CONTINUE',
                  ontap: controller.isButtonActive.value
                      ? controller.submit
                      : null,
                  color: controller.isButtonActive.value
                      ? AppColors.secondary
                      : AppColors.greylight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
