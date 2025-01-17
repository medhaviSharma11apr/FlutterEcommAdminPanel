import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RouteMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? routes) {
    print("Middleware --- called");
    const isAuthenticated = true;

    return isAuthenticated
        ? null
        : const RouteSettings(name: Routes.firstscreen);
  }
}
