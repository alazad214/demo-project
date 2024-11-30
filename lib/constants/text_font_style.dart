import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gen/colors.gen.dart';

class TextFontStyle {
  TextFontStyle._();

  //TEXTSTYLE...
  static var textStyle14w400c000000 = GoogleFonts.poppins(
    color: AppColors.c000000,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  //HEADLINE...
  static var headline18w500c000000 = GoogleFonts.poppins(
    color: AppColors.c000000,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
}