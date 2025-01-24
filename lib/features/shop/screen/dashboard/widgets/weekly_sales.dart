import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controller/dashboard.controller/dashboard_controller.dart';

class WeeklySalesGraph extends StatelessWidget {
  const WeeklySalesGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashBoardController());
    return Container(
      child: TRoundedContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Weekly Sale ",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Graph
            SizedBox(
              height: 300,
              child: BarChart(BarChartData(
                  titlesData: buildFlTitledata(),
                  borderData: FlBorderData(
                      show: true,
                      border: const Border(
                          top: BorderSide.none, right: BorderSide.none)),
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    drawVerticalLine: false,
                    horizontalInterval: 200,
                  ),
                  groupsSpace: TSizes.spaceBtwItems,
                  barTouchData: BarTouchData(
                      touchTooltipData: BarTouchTooltipData(),
                      touchCallback: TDeviceUtils.isDesktopScreen(context)
                          ? (barTouchEvent, barTouchResponse) {}
                          : null),
                  barGroups: controller.weeklySales
                      .asMap()
                      .entries
                      .map((e) => BarChartGroupData(x: e.key, barRods: [
                            BarChartRodData(
                                toY: e.value,
                                width: 30,
                                color: TColors.primary,
                                borderRadius: BorderRadius.circular(TSizes.sm))
                          ]))
                      .toList())),
            )
          ],
        ),
      ),
    );
  }

  FlTitlesData buildFlTitledata() {
    return FlTitlesData(
        show: true,
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          interval: 200,
          reservedSize: 50,
        )),
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: ((value, meta) {
                  // Map index to desired day of week
                  final days = [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun'
                  ];
                  // calculate index
                  final index = value.toInt() % days.length;
                  // Get the day corresponding to calculated index

                  final day = days[index];
                  return SideTitleWidget(
                    axisSide: AxisSide.bottom,
                    space: 0,
                    child: Text(day),
                  );
                }))));
  }
}
