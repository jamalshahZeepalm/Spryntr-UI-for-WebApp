// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/topcustomers.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';

class TopCustomerWidget extends StatelessWidget {
  TopCustomers topCustomers;
  bool isMobileView;
  TopCustomerWidget(
      {Key? key, required this.topCustomers, required this.isMobileView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobileView == true) {
      return ListTile(
        leading: CircleAvatar(
          radius: 12.r,
          backgroundImage: AssetImage(topCustomers.profileImge),
        ),
        title: Text(topCustomers.name,
            style: CustomTextStyle.kSemiBold14.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 36.sp,
                color: CustomColors.kBlackColor)),
        subtitle: Text(
          topCustomers.email,
          style: CustomTextStyle.kMedium12.copyWith(
            fontSize: 23.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: Text(
          topCustomers.money,
          style: CustomTextStyle.kMedium16.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 36.sp,
              color: CustomColors.kBlackColor),
        ),
      );
    } else {
      return ListTile(
        leading: CircleAvatar(
          radius: 23.r,
          backgroundImage: AssetImage(topCustomers.profileImge),
        ),
        title: Text(topCustomers.name,
            style: CustomTextStyle.kMedium16.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: CustomColors.kBlackColor)),
        subtitle: Text(
          topCustomers.email,
          style: CustomTextStyle.kMedium12.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Text(
          topCustomers.money,
          style: CustomTextStyle.kMedium16.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: CustomColors.kBlackColor),
        ),
      );
    }
  }
}
