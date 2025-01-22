import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/controller/dashboard.controller/dashboard_controller.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TableSource extends DataTableSource {
  // final controller = DashBoardController.instance;
  @override
  DataRow? getRow(int index) {
    final order = DashBoardController.orders[index];

    // TODO: implement getRow
    return DataRow2(cells: [
      DataCell(
        Text(order.id,
            style: Theme.of(Get.context!).textTheme.bodyLarge!.apply(
                  color: TColors.primary,
                )),
      ),
      // const DataCell(Text('hii')),
      DataCell(Text(order.formattedOrderDate)),
      const DataCell(Text('5 Items')),
      DataCell(
          // Text(DashBoardController.instance.getOrderStatusName(order.status))
          TRoundedContainer(
        radius: TSizes.cardRadiusSm,
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.xs,
          horizontal: TSizes.md,
        ),
        backgroundColor:
            THelperFunctions.getOrderStatusColor(order.status).withOpacity(0.1),
        child: Text(
          order.status.name.capitalize.toString(),
          style: TextStyle(
            color: THelperFunctions.getOrderStatusColor(order.status),
          ),
        ),
      )),
      DataCell(Text('\$${order.totalAmount}')),
      // const DataCell(Text('')),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => DashBoardController.orders.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
