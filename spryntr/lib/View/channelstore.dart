import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/custom_mobileview_channel_dashboard.dart';
import '../Widgets/custom_mobileview_drawer.dart';
import '../Widgets/custom_mobileview_top_navbar.dart';
import '../Widgets/custom_webview_channel_dashboard.dart';
import '../Widgets/custom_webview_drawer.dart';
import '../Widgets/custom_top_navbar.dart';

class ChannelStoreList extends StatefulWidget {
  const ChannelStoreList({Key? key}) : super(key: key);

  @override
  State<ChannelStoreList> createState() => _ChannelStoreListState();
}

class _ChannelStoreListState extends State<ChannelStoreList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(50.w, 60),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return Row(children: [
                  CustomWebViewTopNavBar(isSearch: true),
                ]);
              } else {
                return const CustomMobileViewTopNavBar();
              }
            },
          )),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return SingleChildScrollView(
              child: WebViewChannelDashboard(
                title: 'Stores List',
                subTitle: 'This is a list of Stores',
                bottomText: 'Add Store',
              ),
            );
          } else {
            return SingleChildScrollView(
                child: MobileViewChannelDasboard(
              title: 'Stores List',
              subTitle: 'This is a list of Stores',
              bottomText: 'Add Store',
            ));
          }
        },
      ),
      drawer: PreferredSize(
        preferredSize: Size(50.w, 50.h),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return const CustomWebViewDrawer();
            }
            return const CustomMobileViewDrawer();
          },
        ),
      ),
    );
  }
}
