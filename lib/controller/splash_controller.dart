import 'package:get/get.dart';
import 'package:project_app1/view/screens/login/login_or_signup.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.to(() => LoginOrSignup());
      },
    );
  }
}
