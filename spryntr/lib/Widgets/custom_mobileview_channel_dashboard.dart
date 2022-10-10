// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/channelcard.dart';
import 'custom_channel_container.dart';
import 'custom_channel_card.dart';
import 'custom_footer.dart';

class MobileViewChannelDasboard extends StatelessWidget {
  String title, subTitle,bottomText; 
  MobileViewChannelDasboard({
    Key? key,
    required this.title,
    required this.subTitle,required this.bottomText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 26.w),
          child: SizedBox(
            height: 200.h,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CustomChannelCard(
                  channelCard: listOfCard[index],
                  currentIndex: index,
                  isMobileView: true,
                );
              },
              itemCount: listOfCard.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 50.w,
                );
              },
            ),
          ),
        ),
        CustomChannelContainer(
            title: title,
            subTitle: subTitle,
            isMobileView: true,
            bottomText: bottomText),
        FooterWidget(isMobileView: true),
      ],
    );
  }
}
