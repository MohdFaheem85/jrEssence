import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jressence/Pages/Login/login_controller.dart';
import 'package:jressence/app_manager/app_color.dart';
import 'package:jressence/app_manager/text_theme.dart';
import 'package:jressence/app_manager/widgets/buttons/primary_button.dart';
import 'package:jressence/app_manager/widgets/coloured_safe_area.dart';
import 'package:jressence/app_manager/widgets/text_field/password_field.dart';
import 'package:jressence/app_manager/widgets/text_field/primary_text_field.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ColoredSafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,width: Get.width,
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
              image: DecorationImage(image: AssetImage("assets/login_bg.png",),fit: BoxFit.fill)
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
                    const SizedBox(height: 100,),
                    Text("Welcome jrEssence!",style: MyTextTheme.mediumWCB.copyWith(fontSize: 30),),
                    const SizedBox(height: 10,),
                    Text("Sign in to continue",style: MyTextTheme.mediumWCN.copyWith(fontSize: 20),),
                    const SizedBox(height: 100,),
                    Container(
                          height: Get.height,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            Obx(() =>
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text("Phone Number",style: MyTextTheme.mediumBCN,),
                                        leading: Radio<String>(
                                          value: "Phone Number",
                                          activeColor: AppColor.primaryColor,
                                          groupValue: controller.isPhoneNumber.value,
                                          onChanged: (String? val) {
                                            print(val);
                                            controller.isPhoneNumber.value = val!;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text("Email",style: MyTextTheme.mediumBCN),
                                        leading: Radio<String>(
                                          value: "Email",
                                          activeColor: AppColor.primaryColor,
                                          groupValue: controller.isPhoneNumber.value,
                                          onChanged: (String? val) {
                                            print(val);
                                            controller.isPhoneNumber.value = val!;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            const SizedBox(height: 20,),
                            Obx(() => Visibility(
                              visible: controller.isPhoneNumber.value.toString() == "Phone Number",
                              child: const PrimaryTextField(
                                prefixIcon: Icon(Icons.mobile_friendly),
                                hintText: "Phone Number",
                                keyboardType: TextInputType.number,
                              ),
                            )),
                            Obx(() => Visibility(
                              visible: controller.isPhoneNumber.value.toString() == "Email",
                              child: const PrimaryTextField(
                                prefixIcon: Icon(Icons.email_outlined),
                                hintText: "Email",
                              ),
                            )),

                            const SizedBox(height: 20,),

                            Visibility(
                              visible: controller.isLoginWithPass == "Login with Password",
                              child: const PasswordField(
                                prefixIcon: Icon(Icons.password_rounded),
                                hintText: "Password",
                              ),
                            ),

                            const SizedBox(height: 50,),
                            PrimaryButton(
                              width: Get.width,
                              title: 'Sign in',
                              onPressed: (val){

                              },),
                            const SizedBox(height: 20,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1,width: 60,
                                  color: AppColor.primaryColor,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 3),
                                  child: Text("or",style: MyTextTheme.smallBCN,),
                                ),
                                Container(
                                  height: 1,width: 60,
                                  color: AppColor.primaryColor,
                                ),
                              ],
                            ),
                            
                            Padding(padding: const EdgeInsets.only(top: 30,bottom: 30),
                              child: InkWell(
                                onTap: (){

                                },
                                  child: Text("Login with Password",style: MyTextTheme.mediumBCB,)),),

                            Container(
                              height: 40,width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: AppColor.greyLight),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WwgH7Nl5_AW9nDCnR2Ozb_AU3rkIbSJdAg&s",scale: 8,),
                                  const SizedBox(width: 5,),
                                  Text("Login with Google",style: MyTextTheme.smallBCN,)
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
}
