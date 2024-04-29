import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app1/core/constants/color_constants.dart';
import 'package:project_app1/view/screens/home/bottom_nav.dart';
import 'package:project_app1/view/screens/login/splash.dart';
import 'view/utils/my_colors.dart';

class SNote extends StatelessWidget {
  // const sNote({super.key});
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'd-Note App',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: ColorConstants.black,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: ColorConstants.grey)),
      home: user == null ? SplashPg() : BottomNavPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
