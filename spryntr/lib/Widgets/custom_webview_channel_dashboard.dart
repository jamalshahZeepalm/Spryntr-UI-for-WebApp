// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/channelcard.dart';
import '../Utils/colors.dart';
import 'custom_channel_container.dart';
import 'custom_channel_card.dart';
import 'custom_footer.dart';
import 'custom_left_sidebar.dart';

class WebViewChannelDashboard extends StatelessWidget {
  String title, subTitle, bottomText;
  WebViewChannelDashboard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.bottomText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 250.w),
          child: Divider(
            height: 2.h,
            color: CustomColors.kDividerColor,
          ),
        ),
        Row(
          children: [
            Container(
                width: 250.w,
                height: 913.h,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                  width: 1.w,
                  color: CustomColors.kDividerColor,
                ))),
                child: const CustomWebViewLeftSideNavBar()),
            SizedBox(
                width: 1218.w,
                height: 913.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, left: 5.w),
                        child: SizedBox(
                          height: 200.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return CustomChannelCard(
                                channelCard: listOfCard[index],
                                currentIndex: index,
                                isMobileView: false,
                              );
                            },
                            itemCount: listOfCard.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 60.w,
                              );
                            },
                          ),
                        ),
                      ),
                      CustomChannelContainer(
                          title: title,
                          subTitle: subTitle,
                          isMobileView: false,
                          bottomText: bottomText),
                      FooterWidget(isMobileView: false),
                    ],
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
