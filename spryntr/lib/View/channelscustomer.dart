import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/custom_mobileview_channel_dashboard.dart';
import '../Widgets/custom_mobileview_drawer.dart';
import '../Widgets/custom_mobileview_top_navbar.dart';
import '../Widgets/custom_webview_channel_dashboard.dart';
import '../Widgets/custom_webview_drawer.dart';
import '../Widgets/custom_top_navbar.dart';

class ChannelCustomer extends StatefulWidget {
  const ChannelCustomer({Key? key}) : super(key: key);

  @override
  State<ChannelCustomer> createState() => _ChannelCustomerState();
}

class _ChannelCustomerState extends State<ChannelCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(50.w, 60),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return Row(children: [
                  CustomWebViewTopNavBar(
                    isSearch: true,
                  ),
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
              physics: const BouncingScrollPhysics(),
              child: WebViewChannelDashboard(
                  title: 'Customers List',
                  subTitle: 'This is a list of Users',
                  bottomText: 'Add User'),
            );
          } else {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: MobileViewChannelDasboard(
                  title: 'Customers List',
                  subTitle: 'This is a list of Users',
                  bottomText: 'Add User'),
            );
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
