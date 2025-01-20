// import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // firebase auth instance
  final _auth = FirebaseAuth.instance;

  // get data of authentictaed usr
  User? get authUser => _auth.currentUser;
  // get is authenticated user

  bool get isAuthenticated => _auth.currentUser != null;

  @override
  void onReady() {
    // Redirect to approprate screen
    _auth.setPersistence(Persistence.LOCAL);
  }

  // login

  // register

  // register user by admin

  // email verification

  // forget pass word

  // reauthentication user

  // logout user

}
