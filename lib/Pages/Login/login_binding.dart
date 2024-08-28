

import 'package:get/get.dart';
import 'package:jressence/Pages/Login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}