import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lookbook/extension/sizebox_extension.dart';

import '../../controllers/designer_profile_screen_controller.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/reusedbutton.dart';
import '../../utils/components/textfield.dart';

class AdminProfileScreen extends StatefulWidget {
  const AdminProfileScreen({super.key});

  @override
  State<AdminProfileScreen> createState() => _AdminProfileScreenState();
}

class _AdminProfileScreenState extends State<AdminProfileScreen> {
  final DesignerProfileScreenController controller =
      Get.put(DesignerProfileScreenController());
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
                          // vertical: 15.0.h,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondary.withOpacity(
                              0.4,
                            ),
                            borderRadius: BorderRadius.circular(
                              40.0.r,
                            ),
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
                                textfield(
                                  text: 'Name',
                                  toHide: false,
                                  optionalIcon: Icons.edit,
                                  controller: controller.nameController,
                                ),
                                10.ph,
                                textfield(
                                  text: 'willie.jennings@example.com',
                                  toHide: false,
                                  optionalIcon: Icons.edit,
                                  controller: controller.emailController,
                                ),
                                10.ph,
                                textfield(
                                  text: 'Password',
                                  toHide: true,
                                  optionalIcon: Icons.edit,
                                  controller: controller.passwordController,
                                ),
                                20.ph,
                                reusedButton(
                                  text: 'UPDATE',
                                  ontap: () {},
                                  color: AppColors.secondary,
                                  icon: Icons.arrow_forward,
                                ),
                                10.ph,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -30.h,
                        left: MediaQuery.of(context).size.width * 0.5 - 60.w,
                        child: CircleAvatar(
                          radius: 60.0.r,
                          backgroundColor: Colors.transparent,
                          child: ClipOval(
                            child: Image.asset(
                              AppImages.noti,
                              fit: BoxFit.cover,
                              width: 120.0.w,
                              height: 120.0.h,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60.h,
                        left: MediaQuery.of(context).size.width * 0.5 + 20.w,
                        child: CircleAvatar(
                          radius: 15.0.r,
                          backgroundColor: AppColors.white,
                          child: Icon(
                            Icons.edit,
                            size: 15.0.w,
                            color: AppColors.secondary,
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
