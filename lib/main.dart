import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_wtf/explore/explore_view_screen.dart';

import 'package:project_wtf/onboarding_screens/screen_1.dart';
import 'package:project_wtf/onboarding_screens/welcome.dart';
import 'package:project_wtf/onboarding_screens/welcome_e_screen.dart';
import 'package:project_wtf/profile/profile_view.dart';
import 'package:project_wtf/recycle/recycle_view_screen.dart';
import 'package:project_wtf/widgets/home_screen.dart';
import 'package:project_wtf/home_pages/home_view.dart';

import 'package:project_wtf/screens/forgot_password.dart';
import 'package:project_wtf/screens/login_screen.dart';
import 'package:project_wtf/screens/reset_password.dart';
import 'package:project_wtf/screens/success_screen.dart';
import 'package:project_wtf/signup_screens/add_address_screen.dart';
import 'package:project_wtf/signup_screens/get_started_screen.dart';
import 'package:project_wtf/signup_screens/setup_screen.dart';
import 'package:project_wtf/signup_screens/successful_screen.dart';
import 'package:project_wtf/splash_screen/splashs_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  //     .then(
  //         (FirebaseApp value) => Get.put(AuthenticationRepository())
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:ProfileView()
    );
  }
}

