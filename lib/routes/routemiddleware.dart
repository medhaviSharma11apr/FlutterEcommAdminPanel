import 'package:ecommerce_admin_panel/data/repositories.authentication/authentication_repository.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RouteMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? routes) {
    return AuthenticationRepository.instance.isAuthenticated
        ? null
        : const RouteSettings(
            name: Routes.login,
          );
  }
}
