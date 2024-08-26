import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import 'package:lookbook/utils/components/custom_app_bar.dart';
import 'package:lookbook/utils/components/custom_bottom_navigation_bar.dart';

import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';

class DesignerHomeScrenn extends StatelessWidget {
  const DesignerHomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 26.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(),
                30.ph,
                Center(
                  child: Text(
                    'DASHBOARD',
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
                20.ph,
                GridView.builder(
                  shrinkWrap:
                      true, // Allows GridView to be inside a SingleChildScrollView
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 20.h,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed('productDetail');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.white,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset(
                                AppImages.product1,
                                height: 150.h,
                                width: 290.w,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0.w,
                                top: 12.0.h,
                              ),
                              child: Text(
                                'MOHAN',
                                style: tSStyleBlack12400,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0.w,
                                top: 12.0.h,
                              ),
                              child: Text(
                                'We work with monitoring\nprogrammes to ensure....',
                                style: tSStyleBlack12400.copyWith(
                                  color: AppColors.text1,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0.w,
                                top: 2.0.h,
                              ),
                              child: Text(
                                "€120",
                                style: tSStyleBlack16400.copyWith(
                                  color: AppColors.secondary,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
