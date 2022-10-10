// ignore_for_file: must_call_super, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

import '../Models/graph.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';

class GraphBar extends StatefulWidget {
  bool isMobileView;
  GraphBar({Key? key, required this.isMobileView}) : super(key: key);

  @override
  State<GraphBar> createState() => _GraphBarState();
}

class _GraphBarState extends State<GraphBar> {
  late TrackballBehavior trackballBehavior;

  @override
  void initState() {
    trackballBehavior = TrackballBehavior(
        lineType: TrackballLineType.horizontal,
        tooltipSettings: InteractiveTooltip(
            format: 'point.x : point.y',
            color: CustomColors.kContainerColor,
            textStyle: widget.isMobileView == true
                ? CustomTextStyle.kMedium10.copyWith(
                    color: CustomColors.kBlackColor,
                    fontSize: 50.sp,
                    fontWeight: FontWeight.w600,
                  )
                : CustomTextStyle.kMedium10.copyWith(
                    color: CustomColors.kBlackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  )),
        lineWidth: 2,
        enable: true,
        activationMode: ActivationMode.singleTap);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isMobileView == true) {
      return SfCartesianChart(
          borderWidth: 0,
          plotAreaBorderWidth: 0,
          trackballBehavior: trackballBehavior,
          primaryXAxis: CategoryAxis(
              rangePadding: ChartRangePadding.auto,
              majorGridLines: const MajorGridLines(width: 0),
              majorTickLines: const MajorTickLines(width: 0),
              minorGridLines: const MinorGridLines(width: 0),
              minorTickLines: const MinorTickLines(width: 0),
              axisLine: const AxisLine(width: 0),
              labelStyle: CustomTextStyle.kMedium10.copyWith(fontSize: 35.sp)),
          primaryYAxis: NumericAxis(
            labelFormat: '{value}k',
            labelStyle: CustomTextStyle.kMedium10.copyWith(fontSize: 35.sp),
            minimum: 0,
            maximum: 240,
            interval: 40,
            axisLine: const AxisLine(width: 0),
          ),
          series: <ChartSeries>[
            SplineSeries<GraphData, String>(
              color: CustomColors.kbrownIconColor,
              splineType: SplineType.natural,
              cardinalSplineTension: 3.8,
              // Bind data source
              dataSource: myGraphList,
              xValueMapper: (GraphData graph, _) => graph.month,
              yValueMapper: (GraphData graph, _) => graph.sales,
            )
          ]);
    } else {
      return SfCartesianChart(
          borderWidth: 0,
          plotAreaBorderWidth: 0,
          trackballBehavior: trackballBehavior,
          primaryXAxis: CategoryAxis(
            rangePadding: ChartRangePadding.auto,
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            minorGridLines: const MinorGridLines(width: 0),
            minorTickLines: const MinorTickLines(width: 0),
            axisLine: const AxisLine(width: 0),
            labelStyle: CustomTextStyle.kMedium10,
          ),
          primaryYAxis: NumericAxis(
              labelFormat: '{value}k',
              labelStyle: CustomTextStyle.kMedium10,
              minimum: 0,
              maximum: 240,
              interval: 40,
              borderWidth: 0,
              majorTickLines: const MajorTickLines(width: 0),
              axisLine: const AxisLine(width: 0)),
          series: <ChartSeries>[
            SplineSeries<GraphData, String>(
              color: CustomColors.kbrownIconColor,
              splineType: SplineType.natural,
              cardinalSplineTension: 3.8,

              // Bind data source
              dataSource: myGraphList,
              xValueMapper: (GraphData graph, _) => graph.month,
              yValueMapper: (GraphData graph, _) => graph.sales,
            )
          ]);
    }
  }
}
