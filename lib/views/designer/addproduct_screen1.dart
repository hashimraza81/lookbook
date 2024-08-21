import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lookbook/controllers/add_product_controller.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import 'package:lookbook/utils/components/constant/app_textstyle.dart';
import 'package:lookbook/utils/components/custom_app_bar.dart';
import 'package:lookbook/utils/components/custom_bottom_navigation_bar.dart';
import 'package:lookbook/utils/components/reusedbutton.dart';
import 'package:lookbook/utils/components/textfield.dart';

import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';

class AddproductScreen1 extends StatelessWidget {
  AddproductScreen1({super.key});

  final AddProductController controller = Get.put(AddProductController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 26.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                30.ph,
                Center(
                  child: Text(
                    'ADD PRODUCT',
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
                30.ph,
                Center(
                  child: Container(
                    color: const Color(0xFFF6F9FB),
                    child: DottedBorder(
                      color: AppColors.secondary,
                      dashPattern: const [6, 3],
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(10),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 90.0.w,
                          vertical: 55.0.h,
                        ),
                        child: SvgPicture.asset(
                          AppImages.img,
                          color: AppColors.greylight,
                        ),
                      ),
                    ),
                  ),
                ),
                15.ph,
                Center(
                  child: Text(
                    'Add Product Image or Video',
                    style: tSStyleBlack18400.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '(Max 5 image)',
                    style: oStyleBlack12400.copyWith(
                      color: const Color(0xFF717171),
                    ),
                  ),
                ),
                30.0.ph,
                Text(
                  'Category',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: 'Type',
                  toHide: false,
                  controller: controller.categoryController,
                  focusNode: controller.categoryFocusNode,
                  nextFocusNode: controller.dressFocusNode,
                  errorText: controller.categoryErrorText,
                ),
                10.ph,
                Row(
                  children: [
                    Text(
                      'Add Category',
                      style: tSStyleBlack14400.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    10.pw,
                    SvgPicture.asset(
                      AppImages.add,
                    ),
                  ],
                ),
                15.ph,
                Text(
                  'Dress Title',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: 'Type',
                  toHide: false,
                  controller: controller.dressController,
                  focusNode: controller.dressFocusNode,
                  nextFocusNode: controller.priceFocusNode,
                ),
                15.ph,
                Text(
                  'Price',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  isNumeric: true,
                  text: 'Type',
                  toHide: false,
                  controller: controller.priceController,
                  focusNode: controller.priceFocusNode,
                  nextFocusNode: controller.descriptionFocusNode,
                  errorText: controller.priceErrorText,
                ),
                15.ph,
                Text(
                  'Product Description',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: 'Type',
                  toHide: false,
                  controller: controller.descriptionController,
                  focusNode: controller.descriptionFocusNode,
                  nextFocusNode: controller.colorFocusNode,
                  errorText: controller.descriptionErrorText,
                ),
                15.ph,
                Text(
                  'Color',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: 'Color',
                  toHide: false,
                  controller: controller.colorController,
                  focusNode: controller.colorFocusNode,
                  nextFocusNode: controller.sizeFocusNode,
                ),
                15.ph,
                Text(
                  'Size',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: 'Size',
                  toHide: false,
                  controller: controller.sizeController,
                  focusNode: controller.sizeFocusNode,
                  nextFocusNode: controller.quantityFocusNode,
                ),
                15.ph,
                Text(
                  'Minimum Order Quantity',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  isNumeric: true,
                  text: 'Type',
                  toHide: false,
                  controller: controller.quantityController,
                  focusNode: controller.quantityFocusNode,
                  nextFocusNode: controller.socialFocusNode,
                ),
                15.ph,
                Text(
                  'Instagram Links',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: 'Type',
                  toHide: false,
                  controller: controller.socialController,
                  focusNode: controller.socialFocusNode,
                  nextFocusNode: controller.phoneFocusNode,
                ),
                10.ph,
                Row(
                  children: [
                    Text(
                      'Add Social Links',
                      style: tSStyleBlack14400.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    10.pw,
                    SvgPicture.asset(
                      AppImages.add,
                    ),
                  ],
                ),
                15.ph,
                Text(
                  'Phone',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  isNumeric: true,
                  text: '023 7878686 33',
                  toHide: false,
                  controller: controller.phoneController,
                  focusNode: controller.phoneFocusNode,
                  nextFocusNode: controller.emailFocusNode,
                  errorText: controller.phoneErrorText,
                ),
                15.ph,
                Text(
                  'Email',
                  style: tSStyleBlack16400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                10.ph,
                textfield(
                  text: '023 7878686 33',
                  toHide: false,
                  controller: controller.emailController,
                  focusNode: controller.emailFocusNode,
                  errorText: controller.emailErrorText,
                ),
                25.ph,
                Obx(
                  () => reusedButton(
                    icon: Icons.arrow_forward_outlined,
                    text: 'NEXT',
                    ontap: controller.isButtonActive.value
                        ? () {
                            Get.toNamed('addPhotographer');
                          }
                        : null, // Disable the button if not active
                    color: controller.isButtonActive.value
                        ? AppColors.secondary
                        : AppColors.greylight,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
