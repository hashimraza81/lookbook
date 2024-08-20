import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/controllers/sign_up_screen_controller.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';
import 'package:lookbook/utils/components/reusedbutton.dart';

import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final SignUpController controller = Get.put(SignUpController());
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode confirmFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 120.0.h,
                  right: 34.0.w,
                  left: 34.0.w,
                  bottom: 30.0.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SIGN UP',
                      style: aStyleBlack48400.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          side: const BorderSide(
                              color: AppColors.white, width: 1.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                      ),
                      onPressed: () {
                        Get.toNamed('signin');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Already have an account? Login",
                            style: tSStyleBlack16400.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          const Icon(
                            Icons.arrow_forward_outlined,
                            color: AppColors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0.w,
                vertical: 24.0.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: tSStyleBlack16400.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  textfield(
                    text: 'Type Full Name',
                    toHide: false,
                    controller: controller.nameController,
                    focusNode: nameFocusNode,
                    nextFocusNode: emailFocusNode,
                    errorText: controller.nameErrorText,
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  Text(
                    'Type Email',
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
                    controller: controller.emailController,
                    focusNode: emailFocusNode,
                    nextFocusNode: passwordFocusNode,
                    errorText: controller.emailErrorText,
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  Text(
                    'Password',
                    style: tSStyleBlack16400.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  textfield(
                    text: 'Type Password',
                    toHide: true,
                    controller: controller.passwordController,
                    focusNode: passwordFocusNode,
                    nextFocusNode: confirmFocusNode,
                    errorText: controller.passwordErrorText,
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  Text(
                    'Confirm Password',
                    style: tSStyleBlack16400.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  textfield(
                    text: 'Type Confirm Password',
                    toHide: true,
                    controller: controller.confirmController,
                    focusNode: confirmFocusNode,
                    errorText: controller.confirmErrorText,
                  ),
                  SizedBox(
                    height: 40.0.h,
                  ),
                  Obx(
                    () => reusedButton(
                      text: 'SIGNUP NOW!',
                      ontap: controller.isButtonActive.value
                          ? () {
                              Get.toNamed('signin');
                            }
                          : null, // Disable the button if not active
                      color: controller.isButtonActive.value
                          ? AppColors.secondary
                          : AppColors.greylight,
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
