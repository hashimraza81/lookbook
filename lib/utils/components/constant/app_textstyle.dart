import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

///////////////----------------Fonts----------------////////////////
//agne
//Montserrat
// Google Fonts ,
// Inter
// Tenor Sans
// Outfit

final TextStyle aStyleBlack16400 = TextStyle(
  fontFamily: 'Agne 400',
  fontSize: 32.sp,
  color: AppColors.primaryColor,
  fontWeight: FontWeight.w400,
);

final TextStyle tSStyleBlack16400 = GoogleFonts.tenorSans(
  fontSize: 16.sp,
  color: AppColors.primaryColor,
  fontWeight: FontWeight.w400,
);

final TextStyle oStyleBlack16600 = GoogleFonts.outfit(
  fontSize: 16.sp,
  color: AppColors.primaryColor,
  fontWeight: FontWeight.w600,
);

final TextStyle iStyleBlack15400 = GoogleFonts.inter(
  fontSize: 15.sp,
  color: AppColors.primaryColor,
  fontWeight: FontWeight.w400,
);

final TextStyle mStyleBlack16400 = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 16.sp,
  color: AppColors.primaryColor,
  fontWeight: FontWeight.w400,
);
