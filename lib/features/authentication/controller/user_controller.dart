import 'package:ecommerce_admin_panel/data/repositories/user/user_repository.dart';
import 'package:ecommerce_admin_panel/features/authentication/model/user_model.dart';
import 'package:ecommerce_admin_panel/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepo = Get.put(UserRepository());

  Future<UserModel> fetchUserDetail() async {
    // return UserModel.empty();
    try {
   
      final user = userRepo.fetchAdminDetails();
      return user;
    } catch (e) {
      TLoaders.errorSnackBar(
        title: "Something went wrong !!!",
        message: e.toString(),
      );
      return UserModel.empty();
    }
  }
}
