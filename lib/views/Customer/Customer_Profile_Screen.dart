import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import 'package:shimmer/shimmer.dart';

import '../../controllers/All_profile_screen_controller.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/reusedbutton.dart';
import '../../utils/components/textfield.dart';

class CustomerProfileScreen extends StatefulWidget {
  const CustomerProfileScreen({super.key});

  @override
  State<CustomerProfileScreen> createState() => _CustomerProfileScreenState();
}

class _CustomerProfileScreenState extends State<CustomerProfileScreen> {
  final AllProfileScreenController controller =
      Get.put(AllProfileScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 26.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'PROFILE',
                    style: tSStyleBlack18400,
                  ),
                ),
                Center(
                  child: SvgPicture.asset(
                    AppImages.line,
                    width: 50.w,
                    height: 15.h,
                    color: AppColors.text1,
                  ),
                ),
                40.ph,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondary.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(40.0.r),
                          ),
                          height: 500.0.h,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 8.0.w,
                              right: 8.0.w,
                              top: 120.0.h,
                            ),
                            child: Column(
                              children: [
                                // Name TextField
                                textfield(
                                  text: 'Name',
                                  toHide: false,
                                  optionalIcon: Icons.edit,
                                  controller: controller.nameController,
                                ),
                                10.ph,

                                // Email TextField
                                textfield(
                                  text: 'Email',
                                  toHide: false,
                                  optionalIcon: Icons.edit,
                                  controller: controller.emailController,
                                ),
                                10.ph,

                                // Password TextField
                                textfield(
                                  text: 'Password',
                                  toHide: true,
                                  optionalIcon: Icons.edit,
                                  controller: controller.passwordController,
                                ),
                                20.ph,

                                // Update Button with Loading Indicator
                                Obx(() {
                                  return controller.isUpdating.value
                                      ? CircularProgressIndicator()
                                      : reusedButton(
                                          text: 'UPDATE',
                                          ontap: () {
                                            controller.updateUserData();
                                          },
                                          color: AppColors.secondary,
                                          icon: Icons.arrow_forward,
                                        );
                                }),
                                10.ph,
                              ],
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        top: -30.h,
                        left: MediaQuery.of(context).size.width * 0.5 - 60.w,
                        child: Obx(() {
                          return controller.isLoading.value
                              ? Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: CircleAvatar(
                                    radius: 60.0.r,
                                    backgroundColor: Colors.grey,
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 60.0.r,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: controller.profileImageUrl !=
                                              null &&
                                          controller.profileImageUrl!.isNotEmpty
                                      ? NetworkImage(
                                          controller.profileImageUrl!)
                                      : null,
                                  child: controller.profileImageUrl == null ||
                                          controller.profileImageUrl!.isEmpty
                                      ? Text(
                                          controller.getInitials(
                                              controller.nameController.text),
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              color: AppColors.white),
                                        )
                                      : null,
                                );
                        }),
                      ),

                      Positioned(
                        top: 60.h,
                        left: MediaQuery.of(context).size.width * 0.5 + 20.w,
                        child: CircleAvatar(
                          radius: 15.0.r,
                          backgroundColor: AppColors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              size: 15.0.w,
                              color: AppColors.secondary,
                            ),
                            onPressed: () {
                              controller.uploadProfilePicture();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                20.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
