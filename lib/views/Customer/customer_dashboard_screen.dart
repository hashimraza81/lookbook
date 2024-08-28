import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/reusable_widget.dart';
import 'event_search_screen.dart';

class CustomerDashboardScreen extends StatefulWidget {
  const CustomerDashboardScreen({super.key});

  @override
  State<CustomerDashboardScreen> createState() =>
      _CustomerDashboardScreenState();
}

class _CustomerDashboardScreenState extends State<CustomerDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 430.w,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                10.ph,
                SizedBox(
                  height: 43.h,
                  width: 385.w,
                  child: SearchBar(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xFFF8F9FE)),
                    leading: Icon(Icons.search,
                        color: Color(0xFF2F3036), size: 30.sp),
                    hintText: 'Search...',
                    trailing: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: InkWell(
                          onTap: () {
                            // showModalBottomSheet(
                            //   context: context,
                            //   isScrollControlled: true,
                            //   backgroundColor: Colors.transparent,
                            //   builder: (BuildContext context) {
                            //     return DraggableScrollableSheet(
                            //       expand: false,
                            //       builder: (_, controller) {
                            //         return Container(
                            //           decoration: BoxDecoration(
                            //             color: Colors.white,
                            //             borderRadius: BorderRadius.only(
                            //               topLeft: Radius.circular(30.r),
                            //               topRight: Radius.circular(30.r),
                            //             ),
                            //           ),
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: 0.w, vertical: 0.h),
                            //           child: EventSearchScreen(),
                            //         );
                            //       },
                            //     );
                            //   },
                            // );
                          },
                          child: SvgPicture.asset(
                            AppImages.searchMenu,
                            height: 20.h,
                            width: 28.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                10.ph,
                SizedBox(
                  height: 72.h,
                  width: 430.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'UK FASHION SHOW',
                        style: tSStyleBlack18400,
                      ),
                      SvgPicture.asset(
                        AppImages.line,
                        width: 150.w,
                        height: 20.h,
                        color: AppColors.text1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductCard(
                            imagePath: AppImages.photographer,
                            title: '21WN Reversible Ring',
                            subtitle: 'Cardigan',
                            price: '\$120',
                            onTap: () {
                              Get.toNamed('CustomerProductDetailScreen',
                                  arguments: {
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
                              Get.toNamed('CustomerProductDetailScreen',
                                  arguments: {
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
                              Get.toNamed('CustomerProductDetailScreen',
                                  arguments: {
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
                              Get.toNamed('CustomerProductDetailScreen',
                                  arguments: {
                                    'title': '21WN Reversible Ring',
                                    'price': '\$120',
                                  });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 78.h,
                  width: 430.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'TEAR SHOW',
                        style: tSStyleBlack18400,
                      ),
                      SvgPicture.asset(
                        AppImages.line,
                        width: 150.w,
                        height: 20.h,
                        color: AppColors.text1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                      10.ph,
                    ],
                  ),
                ),
                20.ph,
                Container(
                  width: 430.w,
                  height: 296.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'LOOK',
                        style: aStyleBlack18600.copyWith(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60.w),
                        child: Text(
                          'BOOK',
                          style: aStyleBlack18600.copyWith(color: Colors.white),
                        ),
                      ),
                      30.ph,
                      SizedBox(
                        height: 74.h,
                        width: 323.w,
                        child: Text(
                          'Making a luxurious lifestyle accessible for a generous group of women is our daily drive.',
                          style:
                              tSStyleBlack16400.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SvgPicture.asset(
                        AppImages.line,
                        width: 150.w,
                        height: 20.h,
                        color: AppColors.white,
                      ),
                      30.ph,
                      SvgPicture.asset(
                        AppImages.signature,
                        width: 150.w,
                        height: 45.h,
                        color: AppColors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 430.w,
                  height: 296.h,
                  decoration: BoxDecoration(
                    color: AppColors.grey1,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(AppImages.twitter)),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(AppImages.instagram)),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(AppImages.youTube)),
                        ],
                      ),
                      SvgPicture.asset(
                        AppImages.line,
                        width: 150.w,
                        height: 20.h,
                        color: AppColors.text1,
                      ),
                      Text(
                        'support@fashionstore',
                        style:
                            tSStyleBlack18400.copyWith(color: AppColors.text1),
                      ),
                      Text(
                        '+12 123 456 7896',
                        style:
                            tSStyleBlack18400.copyWith(color: AppColors.text1),
                      ),
                      Text(
                        '  08:00 - 22:00 - Everyday',
                        style:
                            tSStyleBlack18400.copyWith(color: AppColors.text1),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'About',
                            style: tSStyleBlack20400.copyWith(
                                color: AppColors.black),
                          ),
                          Text(
                            'Contact',
                            style: tSStyleBlack20400.copyWith(
                                color: AppColors.black),
                          ),
                          Text(
                            'Blog',
                            style: tSStyleBlack20400.copyWith(
                                color: AppColors.black),
                          )
                        ],
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
