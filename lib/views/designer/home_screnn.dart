import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/reusable_widget.dart';

class DesignerHomeScreen extends StatelessWidget {
  const DesignerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 26.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductCard(
                          imagePath: AppImages.profile,
                          title: '21WN Reversible Ring',
                          subtitle: 'Cardigan',
                          price: '\$120',
                          onTap: () {
                            Get.toNamed('productDetail', arguments: {
                              'title': '21WN Reversible Ring',
                              'price': '\$120',
                            });
                          },
                        ),
                        ProductCard(
                          imagePath: AppImages.noti,
                          title: '21WN Reversible Ring',
                          subtitle: 'Cardigan',
                          price: '\$120',
                          onTap: () {
                            Get.toNamed('productDetail', arguments: {
                              'title': '21WN Reversible Ring',
                              'price': '\$120',
                            });
                          },
                        ),
                      ],
                    ),
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductCard(
                          imagePath: AppImages.photographer,
                          title: '21WN Reversible Ring',
                          subtitle: 'Cardigan',
                          price: '\$120',
                          onTap: () {
                            Get.toNamed('productDetail', arguments: {
                              'title': '21WN Reversible Ring',
                              'price': '\$120',
                            });
                          },
                        ),
                        ProductCard(
                          imagePath: AppImages.photographer,
                          title: '21WN Reversible Ring',
                          subtitle: 'Cardigan',
                          price: '\$120',
                          onTap: () {
                            Get.toNamed('productDetail', arguments: {
                              'title': '21WN Reversible Ring',
                              'price': '\$120',
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('addProduct');
          },
          backgroundColor: AppColors.secondary,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
