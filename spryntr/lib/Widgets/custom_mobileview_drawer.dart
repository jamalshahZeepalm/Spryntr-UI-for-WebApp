import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/View/dashboard.dart';

import '../Utils/colors.dart';
import '../Utils/images_path.dart';
import '../Utils/typography.dart';
import '../View/channelscustomer.dart';
import '../View/channelsdelivery.dart';
import '../View/channelstore.dart';

class CustomMobileViewDrawer extends StatelessWidget {
  const CustomMobileViewDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: BoxDecoration(color: CustomColors.kLightBrown),
            child: Padding(
              padding: EdgeInsets.only(left: 40.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(CustomAssets.kPieChartIcon),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => const AdminOverView());
                    },
                    child: Text('Overview',
                        style: CustomTextStyle.kMedium16
                            .copyWith(fontSize: 70.sp)),
                  )
                ],
              ),
            )),
        Padding(
          padding: EdgeInsets.only(left: 35.w, right: 35.w, bottom: 20.h),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    width: 1.2.w, color: CustomColors.kDividerColor)),
            child: ExpansionTile(
              collapsedIconColor: CustomColors.kBlackIconColor,
              collapsedTextColor: CustomColors.kbrownIconColor,
              textColor: CustomColors.kbrownIconColor,
              leading: SvgPicture.asset(CustomAssets.kTableLayoutIcon),
              title: Text('Channel',
                  style: CustomTextStyle.kMedium16.copyWith(
                    fontSize: 60.sp,
                  )),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const ChannelCustomer());
                        },
                        child: Text('Customers',
                            style: CustomTextStyle.kMedium16.copyWith(
                              fontSize: 60.sp,
                            ))),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const ChannelStoreList());
                        },
                        child: Text('Stores',
                            style: CustomTextStyle.kMedium16.copyWith(
                              fontSize: 60.sp,
                            ))),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const ChannelsDelivery());
                      },
                      child: Text('Delivery',
                          style: CustomTextStyle.kMedium16.copyWith(
                            fontSize: 60.sp,
                          )),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w, right: 35.w),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    width: 1.2.w, color: CustomColors.kDividerColor)),
            child: ExpansionTile(
              collapsedIconColor: CustomColors.kBlackIconColor,
              collapsedTextColor: CustomColors.kbrownIconColor,
              textColor: CustomColors.kbrownIconColor,
              leading: SvgPicture.asset(CustomAssets.kProfileuserIcon),
              title: Text('User',
                  style: CustomTextStyle.kMedium16.copyWith(
                    fontSize: 60.sp,
                  )),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add Admin',
                        style: CustomTextStyle.kMedium16.copyWith(
                          fontSize: 60.sp,
                        )),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text('Administrators',
                        style: CustomTextStyle.kMedium16.copyWith(
                          fontSize: 60.sp,
                        )),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Divider(
          height: 1,
          color: CustomColors.kDividerColor,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 24.h,
            left: 100.w,
          ),
          child: Row(children: [
            SvgPicture.asset(CustomAssets.kDocumentIcon),
            SizedBox(
              width: 119.w,
            ),
            Text('Docs',
                style: CustomTextStyle.kMedium16.copyWith(
                  fontSize: 60.sp,
                ))
          ]),
        ),
      ]),
    );
  }
}
