import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lookbook/extension/sizebox_extension.dart';
import '../../utils/components/constant/app_colors.dart';
import '../../utils/components/constant/app_textstyle.dart';
import '../../utils/components/reusedbutton.dart';

class EventSearchScreen extends StatefulWidget {
  const EventSearchScreen({super.key});

  @override
  _EventSearchScreenState createState() => _EventSearchScreenState();
}

class _EventSearchScreenState extends State<EventSearchScreen> {
  bool isEventSelected = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 150.0.w,
                  child: const Divider(
                    thickness: 3,
                    color: AppColors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: 195.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.divider,
                    borderRadius: BorderRadius.circular(6.0.r),
                    border: Border.all(
                      color: AppColors.divider2,
                      width: 3.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isEventSelected = true;
                          });
                        },
                        child: Container(
                          width: 91.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            color: isEventSelected
                                ? AppColors.white
                                : AppColors.divider,
                            borderRadius: BorderRadius.circular(8.0.r),
                          ),
                          child: Center(
                            child: Text(
                              'Events',
                              style: oStyleBlack16600.copyWith(
                                color: isEventSelected
                                    ? AppColors.secondary
                                    : AppColors.text6,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isEventSelected = false;
                          });
                        },
                        child: Container(
                          width: 91.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            color: !isEventSelected
                                ? AppColors.white
                                : AppColors.divider,
                            borderRadius: BorderRadius.circular(8.0.r),
                          ),
                          child: Center(
                            child: Text(
                              'Date',
                              style: oStyleBlack16600.copyWith(
                                color: !isEventSelected
                                    ? AppColors.secondary
                                    : AppColors.text6,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              20.ph,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 43.h,
                    width: 390.w,
                    child: SearchBar(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xFFF8F9FE)),
                      leading: Icon(Icons.search,
                          color: Color(0xFF2F3036), size: 30.sp),
                      hintText: 'Search...',
                    ),
                  ),
                  20.ph,
                  Container(
                      width: 390.w,
                      height: 235.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9).withOpacity(0.24),
                        borderRadius: BorderRadius.circular(6.0.r),
                        border: Border.all(
                          color: AppColors.divider2,
                          width: 1.0,
                        ),
                      )),
                  20.ph,
                  reusedButton(
                    text: 'FIND RESULTS',
                    ontap: () {},
                    color: AppColors.secondary,
                    icon: Icons.east,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
