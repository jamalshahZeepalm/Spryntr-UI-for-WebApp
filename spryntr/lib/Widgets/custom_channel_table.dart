// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:spryntr/Models/channeltable.dart';
import 'package:spryntr/Utils/images_path.dart';

import '../Utils/colors.dart';

import '../Utils/typography.dart';

class CustomChannelTable extends StatefulWidget {
  ChannelTable customersList;
  int currentIndex;
  bool isMobileView;

  CustomChannelTable(
      {Key? key,
      required this.customersList,
      required this.currentIndex,
      required this.isMobileView})
      : super(key: key);

  @override
  State<CustomChannelTable> createState() => _CustomChannelTableState();
}

class _CustomChannelTableState extends State<CustomChannelTable> {
  @override
  Widget build(BuildContext context) {
    if (widget.isMobileView == true) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (widget.isMobileView == true) {
                showAlertBoxMethodForMobileView(context);
              } else {
                showAlertBoxMethod(context);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: widget.currentIndex % 2 == 0
                    ? CustomColors.kContainerColor
                    : CustomColors.kCoolGrey,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.w),
                    width: 300.w,
                    child: Text(widget.customersList.name,
                        style: CustomTextStyle.kSemiBold14.copyWith(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.kBlackColor,
                            fontSize: 30.sp)),
                  ),
                  SizedBox(
                      width: 250.w,
                      child: Center(
                          child: Text(
                        widget.customersList.email,
                        style: CustomTextStyle.kSemiBold14.copyWith(
                            color: CustomColors.kGery, fontSize: 30.sp),
                      ))),
                  SizedBox(
                      width: 270.w,
                      child: Center(
                          child: Text(
                        widget.customersList.phone,
                        style: CustomTextStyle.kMedium16.copyWith(
                            color: CustomColors.kBlackIconColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp),
                      ))),
                  Container(
                      width: 200.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Center(
                          child: Text(
                        widget.customersList.totalspent,
                        style: CustomTextStyle.kMedium16.copyWith(
                            color: CustomColors.kBlackIconColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp),
                      ))),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Center(
                            child: Text(
                          widget.customersList.dateRegistered,
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              color: CustomColors.kGery, fontSize: 30.sp),
                        ))),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              showAlertBoxMethod(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: widget.currentIndex % 2 == 0
                    ? Colors.transparent
                    : CustomColors.kContainerColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
                    width: 160.w,
                    child: Text(widget.customersList.name,
                        style: CustomTextStyle.kSemiBold14
                            .copyWith(fontWeight: FontWeight.w600)),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 185.w,
                      child: Center(
                          child: Text(widget.customersList.email,
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontSize: 12.sp,
                                  color: CustomColors.kGery)))),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 190.w,
                      child: Center(
                          child: Text(widget.customersList.phone,
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500)))),
                  Container(
                      width: 200.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Center(
                          child: Text(widget.customersList.totalspent,
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500)))),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Center(
                            child: Text(widget.customersList.dateRegistered,
                                style: CustomTextStyle.kSemiBold14.copyWith(
                                    fontSize: 14.sp,
                                    color: CustomColors.kGery)))),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    }
  }

  Future<dynamic> showAlertBoxMethod(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Actions", style: CustomTextStyle.kSemiBold14),
        actions: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() => Get.back()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delete',
                        style: CustomTextStyle.kSemiBold14.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SvgPicture.asset(CustomAssets.kTrash),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() => Get.back()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Edit',
                          style: CustomTextStyle.kSemiBold14.copyWith(
                            fontWeight: FontWeight.w500,
                          )),
                      SvgPicture.asset(CustomAssets.kPencilIcon),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<dynamic> showAlertBoxMethodForMobileView(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Actions",
            style: CustomTextStyle.kSemiBold14.copyWith(fontSize: 100.sp)),
        actions: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() => Get.back()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delete',
                        style: CustomTextStyle.kSemiBold14.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 60.sp),
                      ),
                      SvgPicture.asset(CustomAssets.kTrash),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() => Get.back()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Edit',
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 60.sp)),
                      SvgPicture.asset(CustomAssets.kPencilIcon),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
