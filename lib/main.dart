import 'package:ecommerce_admin_panel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';
import 'data/repositories/authenticationrepository/authentication_repository.dart';

// Entry Point For Flutter App
Future<void> main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  // Ensure Widget are Properly Initialized

  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Getzx LocalStorage

  await GetStorage.init();

  // Remove # from Url
  setPathUrlStrategy();

  // Initialize Firebase app auth

  // Main App starts here
  runApp(const App());
}
