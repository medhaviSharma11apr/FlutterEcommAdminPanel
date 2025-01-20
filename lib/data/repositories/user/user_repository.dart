// import 'package:get/get_state_manager/get_state_manager.dart';

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_admin_panel/data/repositories/authenticationrepository/authentication_repository.dart';
import 'package:ecommerce_admin_panel/features/authentication/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<void> createUser(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseAuthException catch (e) {
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

  Future<UserModel> fetchAdminDetails() async {
    try {
      final docSnapshot = await _db
          .collection("Users")
          .doc(AuthenticationRepository.instance.authUser!.uid)
          .get();
      if (docSnapshot != null) {
        return UserModel.fromSnapshot(docSnapshot);
      } else {
        return UserModel.empty();
      }
    } on FirebaseAuthException catch (e) {
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
}
