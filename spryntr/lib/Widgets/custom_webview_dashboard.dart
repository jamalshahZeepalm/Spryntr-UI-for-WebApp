import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/colors.dart';
import 'custom_left_sidebar.dart';
import 'custom_right_side_container.dart';

class WebViewDashboard extends StatelessWidget {
  const WebViewDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 250.w),
          child: Divider(
            height: 1.h,
            color: CustomColors.kDividerColor,
          ),
        ),
        Row(
          children: [
            Container(
                width: 250.w,
                height: 1811.h,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                  width: 1.w,
                  color: CustomColors.kDividerColor,
                ))),
                child: const CustomWebViewLeftSideNavBar()), //webview
            SizedBox(
                width: 1218.w,
                height: 1717.h,
                child: const CustomWebViewRightSide())
          ],
        ),
      ],
    );
  }
}
