// ignore: file_names
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';

class OrderModel {
  OrderModel({
    this.orderDate,
    this.totalAmount,
    required this.status,
    required this.id,
  });
  DateTime? orderDate;
  double? totalAmount;
  OrderStatus status;
  String id;

  String get formattedOrderDate => THelperFunctions.getFormattedDate(orderDate!);
}
