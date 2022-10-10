// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/incomeestimatetrend.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';

class IncomeEstimatetrendWidget extends StatelessWidget {
  IncomeEstimatetrend incomeEstimatetrend;
  bool isMobileView;
  IncomeEstimatetrendWidget(
      {Key? key, required this.incomeEstimatetrend, required this.isMobileView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMobileView == true
        ? Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 24.h,
                  bottom: 6.h,
                ),
                child: Text(
                  incomeEstimatetrend.title,
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.kMedium16.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 40.sp,
                      color: CustomColors.kLightgreyColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 24.h,
                ),
                child: Text(
                  incomeEstimatetrend.value,
                  style: CustomTextStyle.kBold19.copyWith(
                    fontSize: 50.sp,
                    color: CustomColors.kBlackColor,
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24.h, bottom: 6.w),
                child: Text(
                  incomeEstimatetrend.title,
                  style: CustomTextStyle.kMedium16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: CustomColors.kLightgreyColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 24.h,
                ),
                child: Text(
                  incomeEstimatetrend.value,
                  style: CustomTextStyle.kBold19.copyWith(
                    fontSize: 24.sp,
                    color: CustomColors.kBlackColor,
                  ),
                ),
              ),
            ],
          );
  }
}
