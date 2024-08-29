import 'package:get/get.dart';

class LoginController extends GetxController{

  RxString isPhoneNumber = "Phone Number".obs;

  // RxString isLoginWithPass = "Login with Password".obs;
  // String get getIsLoginPass => isLoginWithPass.value;
  // set updateIsLoginPass(String val){
  //   isLoginWithPass.value = val;
  //   update();
  // }



  RxBool loginWithOTP = false.obs;
  // String get getLoginWithOTP => loginWithOTP.value;
  // set updateLoginWithOTP(String val){
  //   loginWithOTP.value = val;
  //   update();
  // }

}