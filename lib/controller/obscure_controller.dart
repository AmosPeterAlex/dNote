import 'package:get/get.dart';
class ObscureController extends GetxController {
  RxBool showPassword = true.obs;

  void togglePasswordVisibility() {
    showPassword.toggle();
    update();
  }
}