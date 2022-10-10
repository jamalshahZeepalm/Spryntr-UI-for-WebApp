// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:spryntr/Models/channelcard.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Utils/colors.dart';

class CustomChannelCard extends StatefulWidget {
  ChannelCard channelCard;
  bool isMobileView;
  int currentIndex;
  CustomChannelCard(
      {Key? key,
      required this.isMobileView,
      required this.channelCard,
      required this.currentIndex})
      : super(key: key);

  @override
  State<CustomChannelCard> createState() => _CustomChannelCardState();
}

class _CustomChannelCardState extends State<CustomChannelCard> {
  @override
  Widget build(BuildContext context) {
    if (widget.isMobileView == true) {
      return Container(
        width: 600.w,
        height: 200.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
                width: 1.2.w,
                color: widget.currentIndex == 0
                    ? CustomColors.kbrownIconColor
                    : CustomColors.kLightgreyColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.channelCard.title,
              style: widget.currentIndex == 0
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
              widget.channelCard.subTitle,
              style: widget.currentIndex == 0
                  ? CustomTextStyle.kBold19.copyWith(fontSize: 80.sp)
                  : CustomTextStyle.kBold19.copyWith(
                      color: CustomColors.kBlackColor, fontSize: 80.sp),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: 258.w,
        height: 134.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
                width: 1.2.w,
                color: widget.currentIndex == 0
                    ? CustomColors.kbrownIconColor
                    : CustomColors.kLightgreyColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.channelCard.title,
              style: widget.currentIndex == 0
                  ? CustomTextStyle.kBold19
                  : CustomTextStyle.kBold19.copyWith(
                      color: CustomColors.kLightgreyColor,
                    ),
            ),
            Text(
              widget.channelCard.subTitle,
              style: widget.currentIndex == 0
                  ? CustomTextStyle.kBold19.copyWith(fontSize: 40.sp)
                  : CustomTextStyle.kBold19.copyWith(
                      color: CustomColors.kBlackColor, fontSize: 40.sp),
            ),
          ],
        ),
      );
    }
  }
}
