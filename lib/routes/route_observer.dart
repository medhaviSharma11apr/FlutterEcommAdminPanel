import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class RouteObservers extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    // final sidebarcontroller = Get.put(SideBarController());

    // if (previousRoute != null) {
      // check route name and active controller

    //   for (var routeNames in Routes.sideMenuItems) {
    //     if (previousRoute.settings.name == routeNames) {
    //       sidebarcontroller.activeItems.value = routeNames;
    //     }
    //   }
    // }
  }
}
