import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:project_app1/controller/splash_controller.dart';

class SplashPg extends StatelessWidget {
  // const SplashPg({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Lottie.asset(
              'assets/animations/Animation - 1706087233856.json',
              height: 150,
              width: 150,
            ),
          ),
        );
      },
    );
  }
}
