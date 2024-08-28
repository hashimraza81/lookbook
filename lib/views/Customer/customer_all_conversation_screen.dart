import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lookbook/extension/sizebox_extension.dart';

import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_images.dart';
import '../../utils/components/constant/app_textstyle.dart';
import 'customer_message_chat_screen.dart';
class CustomerAllConversationScreen extends StatefulWidget {
  const CustomerAllConversationScreen({super.key});

  @override
  State<CustomerAllConversationScreen> createState() => _CustomerAllConversationScreenState();
}

class _CustomerAllConversationScreenState extends State<CustomerAllConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 72.h,
              width: 430.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'MESSAGES',
                    style: tSStyleBlack18400,
                  ),
                  SvgPicture.asset(
                    AppImages.line,
                    width: 124.w,
                    height: 15.h,
                    color: AppColors.text1,
                  ),
                ],
              ),
            ),
            10.ph,
            SizedBox(
              height: 43.h,
              width: 385.w,
              child: SearchBar(
                backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xFFF8F9FE)),
                leading:
                Icon(Icons.search, color: Color(0xFF2F3036), size: 30.sp),
                hintText: 'Search...',
              ),
            ),
            20.ph,
            SizedBox(
              width: 385.w,
              height: 78.h,
              child: InkWell(
                onTap: () {
                  Get.to(() => const CustomerMessageChatScreen ());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F9FE),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30.0.r,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                child: Image.asset(
                                  AppImages.noti,
                                  fit: BoxFit.cover,
                                  width: 60.0.w,
                                  height: 60.0.h,
                                ),
                              ),
                            ),
                            15.pw,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Jhone  Lane & Jone LIsa',
                                  style: iStyleBlack13700.copyWith(
                                    color: AppColors.text3,
                                  ),
                                ),
                                Text(
                                  'Stand up for what you believe in',
                                  style: iStyleBlack15400.copyWith(
                                    color: AppColors.text2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 25.sp,
                          color: Color(0xFFE47F46),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
