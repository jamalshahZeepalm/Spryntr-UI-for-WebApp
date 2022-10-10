// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Utils/colors.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Models/dashboardcard.dart';

class CustomDashboardCard extends StatelessWidget {
  DasboardCardsData myCard;
  int currentIndex;
  bool isMobileView;
  CustomDashboardCard(
      {Key? key,
      required this.myCard,
      required this.currentIndex,
      required this.isMobileView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMobileView == true
        ? Container(
            width: 600.w,
            height: 200.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                    width: 1.2.w,
                    color: currentIndex == 0
                        ? CustomColors.kbrownIconColor
                        : CustomColors.kLightgreyColor)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myCard.title,
                  textAlign: TextAlign.center,
                  style: currentIndex == 0
                      ? CustomTextStyle.kBold19.copyWith(
                          fontSize: 50.sp,
                        )
                      : CustomTextStyle.kBold19.copyWith(
                          fontSize: 50.sp,
                          color: CustomColors.kLightgreyColor,
                        ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  myCard.subTitle,
                  style: currentIndex == 0
                      ? CustomTextStyle.kBold19.copyWith(fontSize: 80.sp)
                      : CustomTextStyle.kBold19.copyWith(
                          color: CustomColors.kBlackColor, fontSize: 80.sp),
                ),
              ],
            ),
          )
        : Container(
            width: 258.w,
            height: 134.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                    width: 1.2.w,
                    color: currentIndex == 0
                        ? CustomColors.kbrownIconColor
                        : CustomColors.kLightgreyColor)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myCard.title,
                  style: currentIndex == 0
                      ? CustomTextStyle.kBold19
                      : CustomTextStyle.kBold19.copyWith(
                          color: CustomColors.kLightgreyColor,
                        ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  myCard.subTitle,
                  style: currentIndex == 0
                      ? CustomTextStyle.kBold19.copyWith(fontSize: 40.sp)
                      : CustomTextStyle.kBold19.copyWith(
                          color: CustomColors.kBlackColor, fontSize: 40.sp),
                ),
              ],
            ),
          );
  }
}
