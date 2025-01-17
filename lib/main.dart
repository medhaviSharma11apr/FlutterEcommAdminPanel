import 'package:ecommerce_admin_panel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';

// Entry Point For Flutter App
Future<void> main() async {
  // Ensure Widget are Properly Initialized

  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Getzx LocalStorage

  // Remove # from Url
  setPathUrlStrategy();

  // Initialize Firebase app auth

  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // .then(
  //   (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // );

  // Main App starts here
  runApp(const App());
}
