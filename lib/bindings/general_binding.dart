import 'package:ecommerce_admin_panel/features/authentication/controller/user_controller.dart';
import 'package:ecommerce_admin_panel/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => NetworkManager(),
      fenix: true,
    );
    Get.lazyPut(
      () => UserController(),
      fenix: true,
    );
  }
}
