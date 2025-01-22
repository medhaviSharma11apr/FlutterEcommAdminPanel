import 'dart:developer';

import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../../model/orderModel.dart';

class DashBoardController extends GetxController {
  static DashBoardController get instance => Get.find();

  final RxList<double> weeklySales = <double>[].obs;
  final now = DateTime.now();
  final RxMap<OrderStatus, int> orderStatusData = <OrderStatus, int>{}.obs;
  final RxMap<OrderStatus, double> totalAmounts = <OrderStatus, double>{}.obs;
  final RxList<double> weeklyList = <double>[].obs;

// order List
  static final List<OrderModel> orders = [
    OrderModel(
        totalAmount: 3, orderDate: DateTime.now(), status: OrderStatus.pending),
    OrderModel(
        totalAmount: 2,
        orderDate: DateTime.now(),
        status: OrderStatus.cancelled),
    OrderModel(
        totalAmount: 1,
        orderDate: DateTime.now(),
        status: OrderStatus.processing),
    OrderModel(
        totalAmount: 4, orderDate: DateTime.now(), status: OrderStatus.shipped),
    OrderModel(
        totalAmount: 8,
        orderDate: DateTime.now(),
        status: OrderStatus.delivered),
    OrderModel(
        totalAmount: 8,
        orderDate: DateTime.now(),
        status: OrderStatus.delivered),
    // OrderModel(totalAmount: 900, orderDate: DateTime.now()),
  ];

  @override
  void onInit() {
    _calculateWeeklySales();
    _calculateOrderStatusData();
    super.onInit();
  }

  // calculate order status
  void _calculateOrderStatusData() {
    // Reset Status Data
    orderStatusData.clear();
    // Map to store total amount for each status
    totalAmounts.value = {for (var status in OrderStatus.values) status: 0.0};

    for (var order in orders) {
      // count orders
      final status = order.status;
      orderStatusData[status] = (orderStatusData[status] ?? 0) + 1;

      // calculate total amount for each status
      totalAmounts[status] = (totalAmounts[status] ?? 0) + order.totalAmount!;
    }
  }

// calculate weekly sales
  void _calculateWeeklySales() {
    weeklySales.value = List<double>.filled(7, 300.0);
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

  String getOrderStatusName(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        return 'Pending';

      case OrderStatus.processing:
        return 'Processing';
      case OrderStatus.cancelled:
        return 'Cancelled';
      case OrderStatus.delivered:
        return 'Delivered';
      case OrderStatus.shipped:
        return 'Shipped';
      default:
        return 'Unknown';
    }
  }
}
