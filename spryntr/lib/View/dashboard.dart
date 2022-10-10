import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Widgets/custom_top_navbar.dart';

import '../Widgets/custom_mobileview_dashboard.dart';
import '../Widgets/custom_mobileview_drawer.dart';
import '../Widgets/custom_mobileview_top_navbar.dart';
import '../Widgets/custom_webview_drawer.dart';
import '../Widgets/custom_webview_dashboard.dart';

class AdminOverView extends StatefulWidget {
  const AdminOverView({Key? key}) : super(key: key);

  @override
  State<AdminOverView> createState() => _AdminOverViewState();
}

class _AdminOverViewState extends State<AdminOverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(50.w, 60.h),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return CustomWebViewTopNavBar(
                  isSearch: false,
                );
              } else {
                return const CustomMobileViewTopNavBar();
              }
            },
          )),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: WebViewDashboard(),
            );
          } else {
            return const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              
              physics: BouncingScrollPhysics(),
              child: MobileViewDashboard(),
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
