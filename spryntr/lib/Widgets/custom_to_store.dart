// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Models/topstores.dart';

import '../Utils/colors.dart';
import '../Utils/typography.dart';

class TopStoreWidget extends StatelessWidget {
  TopStores topStores;
  bool isMobileView;
  TopStoreWidget({
    Key? key,
    required this.isMobileView,
    required this.topStores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobileView == true) {
      return ListTile(
        title: Text(
          topStores.title,
          style: CustomTextStyle.kSemiBold14.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 36.sp,
              color: CustomColors.kBlackColor),
        ),
        subtitle: Text(
          topStores.subTitle,
          style: CustomTextStyle.kMedium12.copyWith(
            fontSize: 23.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: Text(
          topStores.sale,
          style: CustomTextStyle.kMedium16.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 36.sp,
              color: CustomColors.kBlackColor),
        ),
      );
    } else {
      return ListTile(
        title: Text(topStores.title,
            style: CustomTextStyle.kMedium16.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: CustomColors.kBlackColor)),
        subtitle: Text(
          topStores.subTitle,
          style: CustomTextStyle.kMedium12.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Text(
          topStores.sale,
          style: CustomTextStyle.kMedium16.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: CustomColors.kBlackColor),
        ),
      );
    }
  }
}
