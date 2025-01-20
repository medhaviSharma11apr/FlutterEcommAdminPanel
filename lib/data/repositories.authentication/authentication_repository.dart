// import 'package:get/get_state_manager/get_state_manager.dart';

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../utils/exceptions/firebase_exceptions.dart';
import '../../utils/exceptions/format_exceptions.dart';
import '../../utils/exceptions/platform_exceptions.dart';

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

  Future<UserCredential> loginWithUserAndPassword(
      String email, String password) async {
    try {} on FirebaseAuthException catch (e) {
      log('FireBaseAuth$e');
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      log('FirebaseException$e');
      throw TFirebaseException(e.code).message;
    } on FormatException {
      log('formatExcep');
      throw const TFormatException();
    } on PlatformException catch (e) {
      log('platform$e');
      throw TPlatformException(e.code).message;
    } catch (e) {
      log('platformeeee$e');
      print('platformeeee$e');
      throw 'SomeThing Went Wrong';
    }
  }

  // register

  // register user by admin

  // email verification

  // forget pass word

  // reauthentication user

  // logout user

}
