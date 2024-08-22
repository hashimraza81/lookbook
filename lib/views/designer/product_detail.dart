import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/utils/components/custom_app_bar.dart';

import '../../controllers/product_detail_controller.dart';
import '../../utils/components/constant/app_images.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({super.key});

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
              children: [
                const CustomAppBar(),
                CarouselSlider.builder(
                  carouselController: controller.carouselSliderController,
                  itemCount: imageList.length,
                  itemBuilder: (context, index, realIndex) {
                    return ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                        ],
                      ).createShader(bounds),
                      blendMode: BlendMode.darken,
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 530.h,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      controller.onPageChanged(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
