// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:spryntr/Utils/colors.dart';
import 'package:spryntr/Utils/icondata.dart';
import 'package:spryntr/Utils/typography.dart';


import '../Models/channeltable.dart';
import 'custom_channel_table.dart';

class CustomChannelContainer extends StatefulWidget {
  String title, subTitle, bottomText;
  bool isMobileView;
  CustomChannelContainer(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.isMobileView,
      required this.bottomText})
      : super(key: key);

  @override
  State<CustomChannelContainer> createState() => _CustomChannelContainerState();
}

class _CustomChannelContainerState extends State<CustomChannelContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 16.h, left: 5.w),
        child: widget.isMobileView == true
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColors.kLightgreyColor,
                    width: 1.0.w,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  color: CustomColors.kLightWhite,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 16.h, left: 20.w),
                          child: SizedBox(
                            width: 402.w,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.title,
                                          style: CustomTextStyle.kSemiBold14
                                              .copyWith(fontSize: 75.sp),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(widget.subTitle,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyle.kSemiBold14
                                                .copyWith(
                                              color: CustomColors
                                                  .kSamiDarkGreyColor,
                                              fontSize: 40.sp,
                                            ))
                                      ])
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, right: 20.w),
                        child: Container(
                          width: 800.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.kLightgreyColor,
                              width: 1.0.w,
                            ),
                            borderRadius: BorderRadius.circular(20.r),
                            color: CustomColors.kLightWhite,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search',
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: CustomColors.klightGray,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
                    child: Column(children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: CustomColors.kCoolGrey),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: SizedBox(
                                width: 300.w,
                                child: Text(
                                  'Name',
                                  style: CustomTextStyle.kSemiBold14.copyWith(
                                      fontSize: 45.sp,
                                      color: CustomColors.kGery),
                                )),
                          ),
                          SizedBox(
                              width: 270.w,
                              child: Text(
                                'Email',
                                style: CustomTextStyle.kSemiBold14.copyWith(
                                    fontSize: 45.sp, color: CustomColors.kGery),
                              )),
                          SizedBox(
                              width: 205.w,
                              child: Text(
                                'Phone',
                                style: CustomTextStyle.kSemiBold14.copyWith(
                                    fontSize: 45.sp, color: CustomColors.kGery),
                              )),
                          SizedBox(
                              width: 280.w,
                              child: Text(
                                'Total spent',
                                style: CustomTextStyle.kSemiBold14.copyWith(
                                    fontSize: 45.sp, color: CustomColors.kGery),
                              )),
                          SizedBox(
                              child: Text(
                            'Date Registered',
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                fontSize: 45.sp, color: CustomColors.kGery),
                          ))
                        ]),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 300.h,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: channelList.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 10.h,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return CustomChannelTable(
                              customersList: channelList[index],
                              currentIndex: index,
                              isMobileView: true,
                            );
                          },
                        ),
                      )
                    ]),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.h,
                          horizontal: 7.w,
                        ),
                        child: GroupButton(
                          options: GroupButtonOptions(
                              groupingType: GroupingType.row,
                              buttonHeight: 45.h,
                              buttonWidth: 150.w,
                              selectedBorderColor:
                                  CustomColors.kBackgroundColor,
                              selectedColor: CustomColors.kbrownIconColor,
                              unselectedColor: CustomColors.kBackgroundColor,
                              unselectedBorderColor:
                                  CustomColors.kBlackIconColor,
                              borderRadius: BorderRadius.circular(30.r)),
                          isRadio: false,
                          buttons: const ["1", "2", "3", ">"],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Icon(
                        CustomIconData.kAdd,
                        color: CustomColors.kbrownIconColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(widget.bottomText,
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 60.sp,
                              color: CustomColors.kBrown))
                    ],
                  )
                ]),
              )
            : Container(
                width: 1218.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColors.kLightgreyColor,
                    width: 1.0.w,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  color: CustomColors.kLightWhite,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 16.h, left: 20.w),
                          child: SizedBox(
                            width: 402.w,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.title,
                                          style: CustomTextStyle.kSemiBold14
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  color:
                                                      CustomColors.kBlackColor),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(widget.subTitle,
                                            style: CustomTextStyle.kSemiBold14
                                                .copyWith(
                                                    color: CustomColors.kGery))
                                      ])
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 24.h, left: 161.w, right: 24.w),
                        child: Container(
                          width: 402.w,
                          height: 50.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.w, vertical: 6.h),
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
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: CustomColors.klightGray,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
                    child: SizedBox(
                      width: 1186.w,
                      child: Column(children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: CustomColors.kContainerColor),
                          child: Row(children: [
                            SizedBox(
                                width: 170.w,
                                child: Text('Name',
                                    style: CustomTextStyle.kSemiBold14.copyWith(
                                        fontSize: 12.sp,
                                        color: CustomColors.kGery))),
                            SizedBox(
                                width: 234.w,
                                child: Text(
                                  'Email',
                                  style: CustomTextStyle.kSemiBold14.copyWith(
                                      fontSize: 12.sp,
                                      color: CustomColors.kGery),
                                )),
                            SizedBox(
                                width: 190.w,
                                child: Text('Phone',
                                    style: CustomTextStyle.kSemiBold14.copyWith(
                                        fontSize: 12.sp,
                                        color: CustomColors.kGery))),
                            SizedBox(
                                width: 280.w,
                                child: Text('Total spent',
                                    style: CustomTextStyle.kMedium16.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: CustomColors.kBlackColor))),
                            SizedBox(
                                child: Text('Date Registered',
                                    style: CustomTextStyle.kSemiBold14.copyWith(
                                        fontSize: 12.sp,
                                        color: CustomColors.kGery)))
                          ]),
                        ),
                        SizedBox(
                          height: 500.h,
                          child: ListView.separated(
                            itemCount: channelList.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: 1.h,
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return CustomChannelTable(
                                customersList: channelList[index],
                                currentIndex: index,
                                isMobileView: false,
                              );
                            },
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 7.h,
                          horizontal: 7.w,
                        ),
                        child: GroupButton(
                          options: GroupButtonOptions(
                              unselectedTextStyle: CustomTextStyle.kMedium13,
                              selectedTextStyle: CustomTextStyle.kMedium13
                                  .copyWith(color: Colors.white),
                              groupingType: GroupingType.row,
                              buttonHeight: 40.h,
                              buttonWidth: 40.w,
                              selectedBorderColor:
                                  CustomColors.kBackgroundColor,
                              selectedColor: CustomColors.kbrownIconColor,
                              unselectedColor: CustomColors.kBackgroundColor,
                              unselectedBorderColor:
                                  CustomColors.kBlackIconColor,
                              borderRadius: BorderRadius.circular(6)),
                          isRadio: true,
                          buttons: const ["<", "1", "2", "3", ">"],
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Icon(
                        CustomIconData.kAdd,
                        color: CustomColors.kbrownIconColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(widget.bottomText,
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: CustomColors.kBrown))
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ]),
              ));
  }
}
