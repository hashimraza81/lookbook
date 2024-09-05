import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/extension/sizebox_extension.dart';

import '../../../controllers/product_detail_controller.dart';
import '../../../utils/components/Custom_dialog.dart';
import '../../../utils/components/build_list.dart';
import '../../../utils/components/constant/app_colors.dart';
import '../../../utils/components/constant/app_images.dart';
import '../../../utils/components/constant/app_textstyle.dart';
import '../../../utils/components/custom_app_bar.dart';
import '../../Designer/designer_profile_screen.dart';
import '../../Designer/photographer_profile_screen.dart';

class RemoveProductScreen extends StatefulWidget {
  const RemoveProductScreen({super.key});

  @override
  State<RemoveProductScreen> createState() => _RemoveProductScreenState();
}

class _RemoveProductScreenState extends State<RemoveProductScreen> {
  final ProductDetailController controller = Get.put(ProductDetailController());

  final List<String> imageList = [
    AppImages.splash,
    AppImages.splash1,
    AppImages.splash2,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.w,
            vertical: 15.0.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                5.ph,
                CarouselSlider.builder(
                  carouselController: controller.carouselSliderController,
                  itemCount: imageList.length,
                  itemBuilder: (context, index, realIndex) {
                    return Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    );
                  },
                  options: CarouselOptions(
                    height: 530.h,
                    viewportFraction: 1.0,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      controller.onPageChanged(index);
                    },
                  ),
                ),
                10.ph,
                Obx(
                  () {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => controller.onDotTap(entry.key),
                          child: Container(
                            width: 12.0.w,
                            height: 12.0.h,
                            margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.currentIndex.value == entry.key
                                  ? AppColors.black
                                  : AppColors.greylight,
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
                10.ph,
                Text(
                  'MOHAN',
                  style: tSStyleBlack16400,
                ),
                5.ph,
                Text(
                  'Recycle Boucle Knit Cardigan Pink',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.text1,
                  ),
                ),
                20.ph,
                BuildList(
                  image: AppImages.profile,
                  text: 'DESIGNER NAME (JHONE)',
                  ontap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                          expand: false,
                          builder: (_, controller) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.w, vertical: 0.h),
                              child: const DesignerProfileScreen(),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                15.ph,
                BuildList(
                  image: AppImages.profile,
                  text: 'PHOTOGRAPHER NAME (LISA)',
                  ontap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                          expand: false,
                          builder: (_, controller) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.w, vertical: 0.h),
                              child: const PhotographerProfileScreen(),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                20.ph,
                Text(
                  'Minimum Order Quantity (150)',
                  style: tSStyleBlack16400,
                ),
                30.ph,
                SizedBox(
                  height: 42.h,
                  width: 399.w,
                  child: ElevatedButton(
                    onPressed: () {
                      showCustomDialog(context,
                          title: 'Sure you want to report?',
                          message: 'Are you sure you want to remove this?');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: AppColors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('REMOVE',
                            style: tSStyleBlack14400.copyWith(
                                color: AppColors.white)),
                        const Icon(
                          Icons.delete,
                          color: AppColors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                10.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
