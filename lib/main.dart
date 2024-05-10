import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/admin/pages/admin_page.dart';
import 'package:realestate/ai/detail.dart';
import 'package:realestate/ai/drawer.dart';
import 'package:realestate/ai/gridview.dart';
import 'package:realestate/ai/nav_nav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:realestate/user/widgets/auth.dart';
import 'firebase_options.dart';

import 'user/pages/detail_page.dart';
import 'user/pages/home_page.dart';
import 'user/pages/login_page.dart';
import 'user/pages/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: AdminPage(),
      // initialRoute: "/",
      // routes: {
      // "/": (context) => LoginPage(),
      // "/signup": (context) => SignUpPage(),
      // "/signIn": (context) => LoginPage(),
      // "/home": (context) => HomePage(),
      // "/my": (context) => MyHomePage(),
      // "/detail": (context) => DetailPage1(),
      // "/grid": (context) => Grid(),
      // },
    );
  }
}
