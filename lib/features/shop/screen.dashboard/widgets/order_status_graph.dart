import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/controller/dashboard.controller/dashboard_controller.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/enums.dart';

class OrderstatusPieChart extends StatelessWidget {
  const OrderstatusPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = DashBoardController.instance;
    return TRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Graph
          Text(
            "Order Status ",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // show status and color meta
          SizedBox(
            height: 300,
            child: PieChart(
              PieChartData(
                  sections: controller.orderStatusData.entries.map(((entry) {
                    final staus = entry.key;
                    final count = entry.value;
                    return PieChartSectionData(
                      title: count.toString(),
                      value: count.toDouble(),
                      radius: 100,
                      color: THelperFunctions.getOrderStatusColor(staus),
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    );
                  })).toList(),
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pietouchresponse) {},
                  )),
            ),
          ),

          // show status and color meta

          SizedBox(
            width: double.infinity,
            child: DataTable(
                // columnSpacing: 15,
                columns: const [
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Order')),
                  DataColumn(label: Text('Total')),
                ],
                rows: controller.orderStatusData.entries.map((e) {
                  final OrderStatus status = e.key;
                  final int count = e.value;
                  final totalAmount = controller.totalAmounts[status] ?? 0;
                  return DataRow(cells: [
                    DataCell(Row(
                      children: [
                        TCircularContainer(
                          width: 20,
                          height: 20,
                          backgroundcColor:
                              THelperFunctions.getOrderStatusColor(status),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Text(
                          controller.getOrderStatusName(status),
                          style: const TextStyle(fontSize: 14),
                        ))
                      ],
                    )),
                    DataCell(Text(count.toString())),
                    DataCell(Text('\$${totalAmount.toStringAsFixed(2)}')),
                  ]);
                }).toList()),
          ),
        ],
      ),
    );
  }
}
