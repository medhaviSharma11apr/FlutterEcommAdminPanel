import 'dart:developer';

import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:get/get.dart';

class SideBarController extends GetxController {
  final activeItem = Routes.responsiveDesignScreen.obs;
  final hoverItem = ''.obs;

  void changeActiveItem(String route) {
    activeItem.value = route;
  }

  void changeHoverItem(String route) {
    if (!isActive(route)) {
      hoverItem.value = route;
    }
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHovering(String route) => hoverItem.value == route;

  void menuOnTAp(String route) {
    log('here$route');
    Get.toNamed(route);
    if (!isActive(route)) {
      log('ghjr');
      changeActiveItem(route);
      if (TDeviceUtils.isMobileScreen(Get.context!)) {
        Get.back();
      }
    }
  }
}
