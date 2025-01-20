import 'package:ecommerce_admin_panel/data/repositories/authenticationrepository/authentication_repository.dart';
import 'package:ecommerce_admin_panel/data/repositories/user/user_repository.dart';
import 'package:ecommerce_admin_panel/features/authentication/controller/user_controller.dart';
import 'package:ecommerce_admin_panel/features/authentication/model/user_model.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:ecommerce_admin_panel/utils/helpers/network_manager.dart';
import 'package:ecommerce_admin_panel/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_admin_panel/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final hidepassword = true.obs;
  final rememberMe = true.obs;
  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();
  final loginformkey = GlobalKey<FormState>();

  @override
  onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  // Handle email and password signin process
  Future<void> emailAndPasswordSignIn() async {
    try {
      // start loading
      FullScreenLoader.openLoadingDialog(
        'Registering Admin Account ... ',
        TImages.docerAnimation,
      );

      // check network or internet connectivity

      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        FullScreenLoader.stopLoading();
      }
      // form validation

      if (!loginformkey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }
      // save data if remember me is selected

      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text);
        localStorage.write('REMEMBER_ME_PASSWORD', password.text);
      }

      // login user using  email and password Authentication
      await AuthenticationRepository.instance.loginWithEmailAndPassword(
        email.text,
        password.text,
      );

      // fetch user detailand assign to user controller
      final user = await UserController.instance.fetchUserDetail();

      // remove loader

      FullScreenLoader.stopLoading();

      if (user.role != AppRole.admin) {
        await AuthenticationRepository.instance.logout();
        TLoaders.errorSnackBar(
            title: 'Error', message: "You Are Not Authorized");
      } else {
        // screen redirect

        AuthenticationRepository.instance.screenRedirect();
      }
    } catch (e) {
      FullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(
        title: 'Oh ! Snap Something happened',
        message: e.toString(),
      );
    }
  }

  // Handle registration of admin user
  Future<void> registerAdmin() async {
    try {
      // start loading
      FullScreenLoader.openLoadingDialog(
        'Registering Admin Account ... ',
        TImages.docerAnimation,
      );

      // check network or internet connectivity

      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        FullScreenLoader.stopLoading();
      }

      // register user using  email and password Authentication
      await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text,
        password.text,
      );

      // crete admin record in firebase
      final userRepository = Get.put(UserRepository());
      await userRepository.createUser(UserModel(
        id: AuthenticationRepository.instance.authUser!.uid,
        firstName: 'First',
        lastName: 'last',
        userName: 'first last',
        email: TTexts.adminEmail,
        role: AppRole.admin,
        createdAt: DateTime.now(),
      ));

      // remove loader

      FullScreenLoader.stopLoading();
      // screen redirect

      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      FullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(
        title: 'Oh ! Snap Something happened',
        message: e.toString(),
      );
    }
  }
}
