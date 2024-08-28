import 'package:get/get.dart';

class LoginController extends GetxController{

  RxString isPhoneNumber = "Phone Number".obs;

  RxString isLoginWithPass = "Login with Password".obs;
  String get getIsLoginPass => isLoginWithPass.value;
  set updateIsLoginPass(String val){
    isLoginWithPass.value = val;
    update();
  }

}