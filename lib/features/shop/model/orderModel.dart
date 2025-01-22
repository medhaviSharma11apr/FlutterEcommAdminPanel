// ignore: file_names
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';

class OrderModel {
  OrderModel({
    this.orderDate,
    this.totalAmount,
    required this.status
  });
  DateTime? orderDate;
  double? totalAmount;
 OrderStatus status;
}
