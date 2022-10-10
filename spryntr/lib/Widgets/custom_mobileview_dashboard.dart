import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Models/dashboardcard.dart';
import '../Models/dashboardtransactionstable.dart';
import '../Models/incomeestimatetrend.dart';
import '../Models/topcustomers.dart';
import '../Models/topstores.dart';
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

class MobileViewDashboard extends StatefulWidget {
  //mobile view dashboard
  const MobileViewDashboard({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileViewDashboard> createState() => _MobileViewDashboardState();
}

class _MobileViewDashboardState extends State<MobileViewDashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // top cards
      Padding(
        padding: EdgeInsets.only(top: 20.h, left: 26.w),
        child: SizedBox(
          height: 200.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return CustomDashboardCard(
                myCard: listOfCards[index],
                currentIndex: index,
                isMobileView: true,
              );
            },
            itemCount: listOfCards.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 50.w,
              );
            },
          ),
        ),
      ),
      // center income container
      Padding(
        padding: EdgeInsets.only(top: 16.h, right: 20.w, left: 26.w),
        child: Container(
          height: 564.h,
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, top: 20.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Income Estimate trend',
                                style: CustomTextStyle.kBold19.copyWith(
                                  color: CustomColors.kBlackColor,
                                  fontSize: 75.sp,
                                )),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'as of 25 May 2021, 09:41 PM',
                              style: CustomTextStyle.kMedium12
                                  .copyWith(fontSize: 40.sp),
                            ),
                          ]),
                    ),
                    Expanded(
                      child: GraphBar(
                        isMobileView: true,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              width: 200.w,
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, right: 10.w),
                child: SizedBox(
                  height: Get.height,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return IncomeEstimatetrendWidget(
                        incomeEstimatetrend: incomeList[index],
                        isMobileView: true,
                      );
                    },
                    separatorBuilder: (contex, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Divider(
                            height: 1,
                            color: CustomColors.kLightgreyColor,
                          ),
                        ],
                      );
                    },
                    itemCount: incomeList.length,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      // center Transactions
      Padding(
        padding: EdgeInsets.only(top: 16.h, right: 20.w, left: 26.w),
        child: Container(
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
                Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 17.w),
                  child: SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transactions',
                            style: CustomTextStyle.kSemiBold14
                                .copyWith(fontSize: 75.sp),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text('This is a list of latest transactions.',
                              textAlign: TextAlign.center,
                              style: CustomTextStyle.kSemiBold14.copyWith(
                                color: CustomColors.kSamiDarkGreyColor,
                                fontSize: 40.sp,
                              ))
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 260.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.kLightgreyColor,
                        width: 1.0.w,
                      ),
                      borderRadius: BorderRadius.circular(33.r),
                      color: CustomColors.kLightWhite,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: CustomColors.klightGray,
                            size: 35.sp,
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                    width: 400.w,
                    child: CustomDropDownButton(isMobileView: true)),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
              child: SizedBox(
                child: Column(children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: CustomColors.kCoolGrey),
                    child: Row(children: [
                      SizedBox(
                          width: 530.w,
                          child: Text(
                            'TRANSACTION',
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                fontSize: 45.sp, color: CustomColors.kGery),
                          )),
                      SizedBox(
                          width: 300.w,
                          child: Text(
                            'DATE',
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                fontSize: 45.sp, color: CustomColors.kGery),
                          )),
                      SizedBox(
                          width: 300.w,
                          child: Text(
                            'AMOUNT',
                            style: CustomTextStyle.kSemiBold14.copyWith(
                                fontSize: 45.sp, color: CustomColors.kGery),
                          )),
                      SizedBox(
                          child: Text(
                        'STATUS',
                        style: CustomTextStyle.kSemiBold14.copyWith(
                            fontSize: 45.sp, color: CustomColors.kGery),
                      ))
                    ]),
                  ),
                  SizedBox(
                    height: 480.h,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: userTransactionsList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 20.h,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return TransactionsWidget(
                          transactions: userTransactionsList[index],
                          isMobileView: true,
                          currentIndex: index,
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
        padding: EdgeInsets.only(top: 10.h, right: 25.w, left: 25.w),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: 500.33.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.r),
                  color: CustomColors.kLightWhite,
                  border: Border.all(
                    color: CustomColors.kLightgreyColor,
                    width: 1.0.w,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Customer',
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 40.sp),
                        ),
                        Text(
                          'View All',
                          style: CustomTextStyle.kSemiBold14.copyWith(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.kBrown,
                              fontSize: 34.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 400.h,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listOfTopCustomer.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TopCustomerWidget(
                            topCustomers: listOfTopCustomer[index],
                            isMobileView: true,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 2.h,
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
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Container(
              width: 600.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.r),
                color: CustomColors.kLightWhite,
                border: Border.all(
                  color: CustomColors.kLightgreyColor,
                  width: 1.0.w,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Store',
                        style: CustomTextStyle.kSemiBold14.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 40.sp),
                      ),
                      Text(
                        'View All',
                        style: CustomTextStyle.kSemiBold14.copyWith(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.kBrown,
                            fontSize: 34.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 390.h,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: listOfTopStore.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TopStoreWidget(
                          topStores: listOfTopStore[index],
                          isMobileView: true,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, right: 20.w),
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
      // fotter container

      FooterWidget(isMobileView: true),
    ]);
  }
}
