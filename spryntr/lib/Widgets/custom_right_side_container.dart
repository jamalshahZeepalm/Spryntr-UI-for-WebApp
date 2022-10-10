// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:spryntr/Models/topcustomers.dart';
import 'package:spryntr/Models/topstores.dart';
import 'package:spryntr/Models/dashboardtransactionstable.dart';

import '../Models/dashboardcard.dart';
import '../Models/incomeestimatetrend.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';
import 'custom_dashboard_card.dart';
import 'custom_dropdown_button.dart';

import 'custom_footer.dart';
import 'custom_graph.dart';
import 'custom_top_customer.dart';
import 'custom_to_store.dart';
import 'custom_transaction_table.dart';
import 'incometrended.dart';

class CustomWebViewRightSide extends StatefulWidget {
  // webview right side
  const CustomWebViewRightSide({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomWebViewRightSide> createState() => _CustomWebViewRightSideState();
}

class _CustomWebViewRightSideState extends State<CustomWebViewRightSide> {
  String dropdownvalue = 'Filter';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        // top cards
        Padding(
          padding: EdgeInsets.only(top: 16.h, left: 25.w),
          child: SizedBox(
            height: 200.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CustomDashboardCard(
                  myCard: listOfCards[index],
                  currentIndex: index,
                  isMobileView: false,
                );
              },
              itemCount: listOfCards.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 36.w,
                );
              },
            ),
          ),
        ),
        // center income container
        Padding(
          padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
          child: Container(
            width: 1218.w,
            height: 720.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.kLightgreyColor,
                width: 1.0.w,
              ),
              borderRadius: BorderRadius.circular(12.r),
              color: CustomColors.kLightWhite,
            ),
            child: Row(children: [
              SizedBox(
                width: 900.w,
                height: Get.height,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, top: 43.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Income Estimate trend',
                                  style: CustomTextStyle.kBold19.copyWith(
                                    color: CustomColors.kBlackColor,
                                  )),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'as of 25 May 2021, 09:41 PM',
                                style: CustomTextStyle.kMedium12,
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GraphBar(
                        isMobileView: false,
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              width: 1, color: CustomColors.klightGray))),
                  width: 230.w,
                  height: Get.height,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return IncomeEstimatetrendWidget(
                        incomeEstimatetrend: incomeList[index],
                        isMobileView: false,
                      );
                    },
                    separatorBuilder: (contex, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          height: 1,
                          color: CustomColors.kLightgreyColor,
                        ),
                      );
                    },
                    itemCount: incomeList.length,
                  ),
                ),
              ),
            ]),
          ),
        ),
        // center Transactions
        Padding(
          padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
          child: Container(
            width: 1218.w,
            height: 880.h,
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
                              Text(
                                'Transactions',
                                style: CustomTextStyle.kSemiBold14
                                    .copyWith(fontSize: 20.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('This is a list of latest transactions.',
                                  style: CustomTextStyle.kSemiBold14.copyWith(
                                    color: CustomColors.kSamiDarkGreyColor,
                                  ))
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 24.h, left: 161.w, right: 24.w),
                    child: Container(
                      width: 500.w,
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
                  SizedBox(
                    width: 210.w,
                    child: CustomDropDownButton(isMobileView: false),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
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
                          color: CustomColors.kCoolGrey),
                      child: Row(children: [
                        SizedBox(
                          height: 70.h,
                        ),
                        SizedBox(
                            width: 400.w,
                            child: Text(
                              'TRANSACTION',
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontSize: 12.sp, color: CustomColors.kGery),
                            )),
                        SizedBox(
                            width: 340.w,
                            child: Text(
                              'DATE',
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontSize: 12.sp, color: CustomColors.kGery),
                            )),
                        SizedBox(
                            width: 170.w,
                            child: Text(
                              'AMOUNT',
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontSize: 12.sp, color: CustomColors.kGery),
                            )),
                        SizedBox(
                            child: Text(
                          'STATUS',
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              fontSize: 12.sp, color: CustomColors.kGery),
                        ))
                      ]),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 620.h,
                      child: ListView.separated(
                        itemCount: userTransactionsList.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20.h,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return TransactionsWidget(
                            transactions: userTransactionsList[index],
                            currentIndex: index,
                            isMobileView: false,
                          );
                        },
                      ),
                    )
                  ]),
                ),
              )
            ]),
          ),
        ),
        // bottom center container
        Padding(
          padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
          child: SizedBox(
            width: 1214.w,
            child: Row(
              children: [
                Container(
                  width: 450.33.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    color: CustomColors.kLightWhite,
                    border: Border.all(
                      color: CustomColors.kLightgreyColor,
                      width: 1.0.w,
                    ),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 24.h, left: 25.w, right: 24.w, bottom: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Customer',
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          Text(
                            'View All',
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                fontWeight: FontWeight.bold,
                                color: CustomColors.kBrown,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 650.h,
                      child: ListView.separated(
                        itemCount: listOfTopCustomer.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TopCustomerWidget(
                            topCustomers: listOfTopCustomer[index],
                            isMobileView: false,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 20.w, right: 20.w),
                                child: Divider(
                                  height: 1.h,
                                  color: CustomColors.kDividerColor,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: CustomColors.kLightWhite,
                      border: Border.all(
                        color: CustomColors.kLightgreyColor,
                        width: 1.0.w,
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 24.h, left: 12.w, right: 12.w, bottom: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Store',
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                            Text(
                              'View All',
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.kBrown,
                                  fontSize: 14.sp),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 650.h,
                        child: ListView.separated(
                          itemCount: listOfTopStore.length,
                          itemBuilder: (BuildContext context, int index) {
                            return TopStoreWidget(
                              topStores: listOfTopStore[index],
                              isMobileView: false,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.w, right: 20.w),
                                  child: Divider(
                                    height: 1.h,
                                    color: CustomColors.kDividerColor,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
        // fotter container

        FooterWidget(isMobileView: false), //dashboard footer for web
      ]),
    );
  }
}
