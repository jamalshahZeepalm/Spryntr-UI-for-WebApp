// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/dashboardtransactionstable.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';

class TransactionsWidget extends StatelessWidget {
  TransactionsTable transactions;
  bool isMobileView;
  int currentIndex;
  TransactionsWidget(
      {Key? key,
      required this.currentIndex,
      required this.transactions,
      required this.isMobileView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobileView == true) {
      return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: currentIndex % 2 == 0
                        ? CustomColors.kContainerColor
                        : CustomColors.kCoolGrey,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: transactions.color,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 10.h),
                        width: 400.w,
                        child: Text(transactions.transactions,
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                color: CustomColors.kBlackColor,
                                fontSize: 30.sp)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        width: 350.w,
                        child: Center(
                          child: Text(
                            transactions.timeDate,
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                color: CustomColors.kGery, fontSize: 30.sp),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        width: 300.w,
                        child: Center(
                          child: Text(
                            transactions.amount,
                            style: CustomTextStyle.kMedium16.copyWith(
                                color: CustomColors.kBlackIconColor,
                                fontSize: 30.sp),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: currentIndex == 2
                                    ? CustomColors.kLightBrown
                                    : currentIndex == 3 || currentIndex == 4
                                        ? CustomColors.kLightBlue
                                        : CustomColors.kLightGreen),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Center(
                                child: Text(transactions.status,
                                    style: CustomTextStyle.kRegular.copyWith(
                                        fontSize: 26.sp,
                                        color: currentIndex == 2
                                            ? CustomColors.kBrown
                                            : currentIndex == 3 ||
                                                    currentIndex == 4
                                                ? CustomColors.kBlue
                                                : CustomColors.kGreen)))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
    } else {
      return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: currentIndex % 2 == 0
                      ? CustomColors.kContainerColor
                      : CustomColors.kCoolGrey,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 9.r,
                      backgroundColor: transactions.color,
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
                      width: 230.w,
                      child: Text(transactions.transactions,
                          style: CustomTextStyle.kSemiBold14
                              .copyWith(color: CustomColors.kBlackColor)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 350.w,
                      child: Center(
                        child: Text(
                          transactions.timeDate,
                          style: CustomTextStyle.kSemiBold14
                              .copyWith(color: CustomColors.kGery),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 300.w,
                      child: Center(
                        child: Text(
                          transactions.amount,
                          style: CustomTextStyle.kMedium16
                              .copyWith(color: CustomColors.kBlackIconColor),
                        ),
                      ),
                    ),
                    Container(
                        width: 75.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.r),
                            color: currentIndex == 2
                                ? CustomColors.kLightBrown
                                : currentIndex == 3 || currentIndex == 4
                                    ? CustomColors.kLightBlue
                                    : CustomColors.kLightGreen),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Center(
                            child: Text(transactions.status,
                                style: CustomTextStyle.kRegular.copyWith(
                                    color: currentIndex == 2
                                        ? CustomColors.kBrown
                                        : currentIndex == 3 || currentIndex == 4
                                            ? CustomColors.kBlue
                                            : CustomColors.kGreen)))),
                  ],
                ),
              ),
            ],
          );
    }
  }
}
