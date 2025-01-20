import 'package:ecommerce_admin_panel/data/repositories/authenticationrepository/authentication_repository.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/route_manager.dart';

class RouteMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? routes) {
    AuthenticationRepository inst = Get.put(AuthenticationRepository());
    return inst.isAuthenticated
        // AuthenticationRepository.instance.isAuthenticated
        ? null
        : const RouteSettings(
            name: Routes.login,
          );
  }
}
