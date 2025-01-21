import 'dart:developer';

import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../../model/orderModel.dart';

class DashBoardController extends GetxController {
  static DashBoardController get instance => Get.find();

  final RxList<double> weeklySales = <double>[].obs;
  final now = DateTime.now();

// order List
  static final List<OrderModel> orders = [
    OrderModel(totalAmount: 300, orderDate: DateTime.now()),
    OrderModel(totalAmount: 200, orderDate: DateTime.now()),
    OrderModel(totalAmount: 100, orderDate: DateTime.now()),
    OrderModel(totalAmount: 400, orderDate: DateTime.now()),
    OrderModel(totalAmount: 800, orderDate: DateTime.now()),
    // OrderModel(totalAmount: 900, orderDate: DateTime.now()),
  ];

  @override
  void onInit() {
    _calculateWeeklySales();
    super.onInit();
  }

  // calculate weekly sales

  void _calculateWeeklySales() {
    weeklySales.value = List<double>.filled(7, 1000.0);
    for (var order in orders) {
      final DateTime orderWeekStart =
          THelperFunctions.getStartOfWeek(order.orderDate!);

      // check if order is within the current week
      if (orderWeekStart.isBefore(DateTime.now()) &&
          orderWeekStart.add(const Duration(days: 7)).isAfter(DateTime.now())) {
        int index = (order.orderDate!.weekday - 1) % 7;
        weeklySales[index] += order.totalAmount!;
      }
    }
    log('weekly sales: $weeklySales');
  }
}
