// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Utils/colors.dart';
import '../Utils/icondata.dart';
import '../Utils/images_path.dart';

class CustomWebViewTopNavBar extends StatelessWidget {
  bool? isSearch;
  CustomWebViewTopNavBar({
    Key? key,
    this.isSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSearch == true
        ? Container(
            color: CustomColors.kNavBarColor,
            width: 1500.w,
            height: 80.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.h,
                          left: 40.w,
                          bottom: 10.h,
                        ),
                        child: SvgPicture.asset(CustomAssets.kSpryntrlogo),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 12.h, bottom: 15.h, left: 40.w),
                        child: Container(
                          width: 402.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.kLightgreyColor,
                              width: 1.0.w,
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                            color: CustomColors.kLightWhite,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: CustomTextStyle.kMedium10.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColors.kGery),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: CustomColors.klightGray,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 18.h, bottom: 18.h),
                      child: Icon(
                        CustomIconData.kNotificationsOutlinedIcon,
                        size: 20.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 18.h, right: 19.w, left: 12.w, bottom: 18.h),
                      child: Image.asset(CustomAssets.kAvatar),
                    )
                  ],
                )
              ],
            ))
        : Container(
            color: CustomColors.kNavBarColor,
            width: 1500.w,
            height: 80.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 500.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 17.h, left: 20.w, bottom: 17.h),
                        child: SvgPicture.asset(CustomAssets.kSpryntrlogo),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 18.h, bottom: 18.h),
                      child: Icon(
                        CustomIconData.kNotificationsOutlinedIcon,
                        size: 20.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 18.h, right: 19.w, left: 12.w, bottom: 18.h),
                      child: Image.asset(CustomAssets.kAvatar),
                    )
                  ],
                )
              ],
            ));
  }
}
