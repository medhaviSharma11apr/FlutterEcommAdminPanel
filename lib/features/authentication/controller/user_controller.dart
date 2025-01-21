import 'package:ecommerce_admin_panel/data/repositories/user/user_repository.dart';
import 'package:ecommerce_admin_panel/features/authentication/model/user_model.dart';
import 'package:ecommerce_admin_panel/utils/popups/loaders.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepo = Get.put(UserRepository());
  RxBool loading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  @override
  void onInit() {
    fetchUserDetail();
    super.onInit();
  }

  Future<UserModel> fetchUserDetail() async {
    // return UserModel.empty();
    try {
      loading.value = true;

      final user = await userRepo.fetchAdminDetails();

      this.user.value = user;
      loading.value = false;
      return user;
    } catch (e) {
      loading.value = false;
      TLoaders.errorSnackBar(
        title: "Something went wrong !!!",
        message: e.toString(),
      );
      return UserModel.empty();
    }
  }
}
