import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Utils/images_path.dart';
import 'package:spryntr/View/channelscustomer.dart';
import 'package:spryntr/View/channelsdelivery.dart';
import 'package:spryntr/View/channelstore.dart';
import 'package:spryntr/View/dashboard.dart';

import '../Utils/colors.dart';
import '../Utils/typography.dart';

class CustomWebViewLeftSideNavBar extends StatefulWidget {
  const CustomWebViewLeftSideNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomWebViewLeftSideNavBar> createState() =>
      _CustomWebViewLeftSideNavBarState();
}

class _CustomWebViewLeftSideNavBarState
    extends State<CustomWebViewLeftSideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25.w, right: 8.w, top: 16.h),
          child: Row(
            children: [
              SvgPicture.asset(CustomAssets.kPieChartIcon),
              SizedBox(
                width: 16.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.off(() => const AdminOverView());
                },
                child: Text('Overview', style: CustomTextStyle.kMedium16),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, left: 12.w, right: 12.w),
          child: ExpansionTile(
            maintainState: true, backgroundColor: CustomColors.kExpansionTitle,
            collapsedBackgroundColor: CustomColors.kExpansionTitle,
            collapsedIconColor: CustomColors.kBlackIconColor,
            collapsedTextColor: CustomColors.kbrownIconColor,
            textColor: CustomColors.kbrownIconColor,
            // initiallyExpanded: true,
            leading: SvgPicture.asset(CustomAssets.kTableLayoutIcon),
            title: Text('Channel',
                style: CustomTextStyle.kMedium16.copyWith(
                  color: CustomColors.kBlackColor,
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
                            color: CustomColors.kBlackColor,
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
                            color: CustomColors.kBlackColor,
                          ))),
                  SizedBox(
                    height: 25.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const ChannelsDelivery());
                    },
                    child: Text(
                      'Delivery',
                      style: CustomTextStyle.kMedium16.copyWith(
                        color: CustomColors.kBlackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, right: 12.w, left: 12.w),
          child: ExpansionTile(
            backgroundColor: CustomColors.kExpansionTitle,
            collapsedBackgroundColor: CustomColors.kExpansionTitle,
            collapsedIconColor: CustomColors.kBlackIconColor,
            collapsedTextColor: CustomColors.kbrownIconColor,
            textColor: CustomColors.kbrownIconColor,
            // initiallyExpanded: true,
            leading: SvgPicture.asset(CustomAssets.kProfileuserIcon),
            title: Text('User',
                textAlign: TextAlign.start,
                style: CustomTextStyle.kMedium16.copyWith(
                  color: CustomColors.kBlackColor,
                )),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add Admin',
                      style: CustomTextStyle.kMedium16.copyWith(
                        color: CustomColors.kBlackColor,
                      )),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text('Administrators',
                      style: CustomTextStyle.kMedium16.copyWith(
                        color: CustomColors.kBlackColor,
                      )),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Divider(
          height: 1,
          color: CustomColors.kDividerColor,
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h, left: 12.w, right: 12.w),
          child: Row(children: [
            SvgPicture.asset(CustomAssets.kDocumentIcon),
            SizedBox(
              width: 19.w,
            ),
            Text('Docs',
                style: CustomTextStyle.kMedium16.copyWith(
                  color: CustomColors.kBlackColor,
                ))
          ]),
        ),
      ],
    );
  }
}
