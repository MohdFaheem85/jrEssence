import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:jressence/Pages/Login/login_controller.dart';
import 'package:jressence/app_manager/alert_toast.dart';
import 'package:jressence/app_manager/app_color.dart';
import 'package:jressence/app_manager/text_theme.dart';
import 'package:jressence/app_manager/widgets/buttons/primary_button.dart';
import 'package:jressence/app_manager/widgets/coloured_safe_area.dart';
import 'package:jressence/app_manager/widgets/text_field/password_field.dart';
import 'package:jressence/app_manager/widgets/text_field/primary_text_field.dart';

import '../../app_manager/alert_view.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ColoredSafeArea(
      child: Scaffold(
          body: Container(
            height: Get.height, width: Get.width,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage("assets/login_bg.png",), fit: BoxFit.fill)
            ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: GetBuilder(
                  init: controller,
                  builder: (_) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const SizedBox(height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 100),
                          child: Text("Welcome jrEssence!",
                            style: MyTextTheme.mediumWCB.copyWith(
                                fontSize: 30),),
                        ),
                        // const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text("Sign in to continue",
                            style: MyTextTheme.mediumWCN.copyWith(
                                fontSize: 20),),
                        ),
                        const SizedBox(height: 100,),
                        Container(
                          height: Get.height,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15), topRight: Radius
                                .circular(15)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 20,),
                                Obx(() =>
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ListTile(
                                            title: Text("Phone Number",
                                              style: MyTextTheme.mediumBCN,),
                                            leading: Radio<String>(
                                              value: "Phone Number",
                                              activeColor: AppColor
                                                  .primaryColor,
                                              groupValue: controller
                                                  .isPhoneNumber.value,
                                              onChanged: (String? val) {
                                                print(val);
                                                controller.isPhoneNumber.value =
                                                val!;
                                              },
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: ListTile(
                                            title: Text("Email",
                                                style: MyTextTheme.mediumBCN),
                                            leading: Radio<String>(
                                              value: "Email",
                                              activeColor: AppColor
                                                  .primaryColor,
                                              groupValue: controller
                                                  .isPhoneNumber.value,
                                              onChanged: (String? val) {
                                                print(val);
                                                controller.isPhoneNumber.value =
                                                val!;
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                const SizedBox(height: 20,),
                                Obx(() =>
                                    Visibility(
                                      visible: controller.isPhoneNumber.value
                                          .toString() == "Phone Number",
                                      child: const PrimaryTextField(
                                        prefixIcon: Icon(Icons.mobile_friendly),
                                        hintText: "Phone Number",
                                        keyboardType: TextInputType.number,
                                      ),
                                    )),
                                Obx(() =>
                                    Visibility(
                                      visible: controller.isPhoneNumber.value
                                          .toString() == "Email",
                                      child: const PrimaryTextField(
                                        prefixIcon: Icon(Icons.email_outlined),
                                        hintText: "Email",
                                      ),
                                    )),

                                const SizedBox(height: 20,),

                                Obx(() {
                                  return Visibility(
                                    visible: controller.loginWithOTP.value,
                                    child: const PasswordField(
                                      prefixIcon: Icon(Icons.password_rounded),
                                      hintText: "Password",
                                    ),
                                  );
                                }),

                                const SizedBox(height: 50,),
                                PrimaryButton(
                                  width: Get.width,
                                  title: 'Sign in',
                                  onPressed: () {
                                   alert();
                                  },),
                                const SizedBox(height: 20,),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 1, width: 60,
                                      color: AppColor.primaryColor,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Text(
                                        "or", style: MyTextTheme.smallBCN,),
                                    ),
                                    Container(
                                      height: 1, width: 60,
                                      color: AppColor.primaryColor,
                                    ),
                                  ],
                                ),

                                Obx(() {
                                  return Padding(padding: const EdgeInsets.only(
                                      top: 30, bottom: 30),
                                    child: InkWell(
                                        onTap: () {
                                          controller.loginWithOTP.value =
                                          !controller.loginWithOTP.value;
                                        },
                                        child: Text(
                                          !controller.loginWithOTP.value
                                              ? "Login with password"
                                              : "Login with OTP",
                                          style: MyTextTheme.mediumBCB,)
                                    ),);
                                }),


                                Container(
                                  height: 40, width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColor.greyLight),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WwgH7Nl5_AW9nDCnR2Ozb_AU3rkIbSJdAg&s",
                                        scale: 8,),
                                      const SizedBox(width: 5,),
                                      Text("Login with Google",
                                        style: MyTextTheme.smallBCN,)
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }
              ),
            ),
          )
      ),
    );
  }


  alert() {
    Get.dialog(
      barrierDismissible: true,
      Material(
        color: Colors.transparent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
               height: 380.0,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 20,top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: (){
                            Get.back();
                          },
                            child: const Icon(Icons.close,))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Your account",
                                style: MyTextTheme.mediumBCN
                            ),
                            Text("  Verification",
                                style: MyTextTheme.veryLargeBCN
                            ),
                          ],
                        ),
                        const Icon(Icons.lock,size: 30,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Please enter the digits verification code",style: MyTextTheme.smallGCN),
                          Row(
                            children: [
                              Text("send to ",style: MyTextTheme.smallGCN),
                              Text("8577850281",style: MyTextTheme.smallBCN),
                            ],
                          ),

                          const SizedBox(height: 20,),
                          OtpTextField(
                            numberOfFields: 4,
                            borderColor: AppColor.greyLight,
                            focusedBorderColor: AppColor.primaryColor,
                            //styles: otpTextStyles,
                            showFieldAsBox: false,
                            borderWidth: 4.0,
                            fieldWidth: 75,
                            //runs when a code is typed in
                            onCodeChanged: (String code) {
                              //handle validation or checks here if necessary
                            },
                            //runs when every textfield is filled
                            onSubmit: (String verificationCode) {

                            },
                          ),
                          const SizedBox(height: 30,),
                          PrimaryButton(
                              onPressed: (){},
                              title: "Submit"),
                          const SizedBox(height: 30,),
                          Text("Don't recive an OTP?",style: MyTextTheme.smallBCN),
                          Row(
                            children: [
                              Text("Resend OTP in ",style: MyTextTheme.smallGCN),
                              const SizedBox(width: 5,),
                              Icon(Icons.watch_later,size: 12,color: AppColor.blue,),
                              const SizedBox(width: 5,),
                              Text("0:30 min",style: MyTextTheme.smallBCN.copyWith(color: AppColor.blue)),

                            ],
                          )
                        ],
                      ),
                    )
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     InkWell(
                    //       onTap: () {
                    //         Get.back();
                    //       },
                    //       child: Text('Ok',
                    //           style: MyTextTheme.mediumBCN
                    //               .copyWith(color: AppColor.primaryColor)),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
