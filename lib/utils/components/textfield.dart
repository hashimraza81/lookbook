import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookbook/utils/components/constant/app_colors.dart';
import 'package:lookbook/utils/components/constant/app_textstyle.dart';

import 'capitalize_word_input.dart';

class textfield extends StatelessWidget {
  final bool toHide;
  final String text;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final String? errorText;
  const textfield({
    super.key,
    required this.text,
    required this.toHide,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: toHide,
      focusNode: focusNode,
      inputFormatters: [
        CapitalizeWordsInputFormatter(),
      ],
      textInputAction:
          nextFocusNode != null ? TextInputAction.next : TextInputAction.done,
      onSubmitted: (_) {
        if (nextFocusNode != null) {
          FocusScope.of(context).requestFocus(nextFocusNode);
        }
      },
      decoration: InputDecoration(
        hintText: text, // Hint text
        hintStyle: const TextStyle(
          color: AppColors.greylight, // Hint text color
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.greylight,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.greylight,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.greylight,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.greylight,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        errorText: errorText,
      ),
      style: tSStyleBlack16400,
    );
  }
}
