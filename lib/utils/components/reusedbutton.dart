import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';

import 'constant/app_textstyle.dart';

// ignore: must_be_immutable
class reusedButton extends StatelessWidget {
  String text;
  final void Function()? ontap;
  Color color;
  IconData? icon;
  reusedButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 18,
        ),
      ),
      onPressed: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: oStyleBlack16600.copyWith(color: AppColors.white),
          ),
          Icon(
            icon,
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}
