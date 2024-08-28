import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import 'constant/app_colors.dart';
import 'constant/app_textstyle.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;
  final VoidCallback onTap;

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 226.h,
            width: 187.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.primaryColor,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          10.ph,
          Container(
            height: 78.h,
            width: 187.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: tSStyleBlack14400,
                ),
                Text(
                  subtitle,
                  style: tSStyleBlack14400,
                ),
                Text(
                  price,
                  style: tSStyleBlack20400.copyWith(
                    color: Color(0xFFDD8560),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
