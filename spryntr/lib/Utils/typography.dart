// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:spryntr/Utils/colors.dart';

class CustomTextStyle {
  static TextStyle kMedium10 = GoogleFonts.inter(
      fontSize: ScreenUtil().setSp(12.sp),
      fontWeight: FontWeight.w600,
      color: CustomColors.kGery);
  static TextStyle kMedium12 = GoogleFonts.mulish(
      fontSize: ScreenUtil().setSp(12.sp),
      fontWeight: FontWeight.w400,
      color: CustomColors.kLightgreyColor);
  static TextStyle kRegular = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(12.sp),
    fontWeight: FontWeight.w600,
  );
  static TextStyle kSemiBold14 = GoogleFonts.barlow(
      fontSize: ScreenUtil().setSp(14.sp),
      fontWeight: FontWeight.w600,
      color: CustomColors.kBlackColor);
  static TextStyle kMedium16 = GoogleFonts.barlow(
      fontSize: ScreenUtil().setSp(16.sp),
      fontWeight: FontWeight.w500,
      color: CustomColors.kBrown);

  static TextStyle kBold19 = GoogleFonts.mulish(
      fontSize: ScreenUtil().setSp(19.sp),
      fontWeight: FontWeight.bold,
      color: CustomColors.kBrown);

    static TextStyle kMedium13 = GoogleFonts.lato(
      fontSize: ScreenUtil().setSp(13.sp),
      fontWeight: FontWeight.w400,
      color: CustomColors.kBlackColor);
}


