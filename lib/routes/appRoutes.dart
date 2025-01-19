import 'package:ecommerce_admin_panel/app.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/login.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/resetpassword/resetpassword.dart';
import 'package:ecommerce_admin_panel/routes/routemiddleware.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
        name: Routes.responsiveDesignScreen,
        page: () => const ResponsiveDesignScreen(),
        middlewares: [RouteMiddleWare()]),
    GetPage(
        name: Routes.firstscreen,
        page: () => const FirstScreen(),
        middlewares: [RouteMiddleWare()]),
    GetPage(
      name: Routes.secondscreen,
      page: () => const SecondScreen(),
      middlewares: [RouteMiddleWare()],
    ),
    GetPage(name: Routes.secondscreenWithUid, page: () => const SecondScreen()),
    GetPage(name: Routes.login, page: (() => const LoginScreen())),
    GetPage(name: Routes.forgetPassword, page: (() => const ForgetPasswordScreen())),
    GetPage(
        name: Routes.resetPassword, page: (() => const ResetPasswordScreen())),
  ];
}
