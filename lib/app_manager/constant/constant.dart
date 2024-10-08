



import 'package:flutter/material.dart';
import 'package:jressence/app_manager/app_color.dart';

class Constant {

  static const String appName = "jressence";
  static const String errorText='Field must not be empty';
  static const String notFilled='Some required fields are not filled';

  static const String userStore = "user";
  static const String userGoneThrowFPStore = "userFirstPage";

  static LinearGradient getGradient(gradientColor){
    return  LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [

        gradientColor!.withOpacity(0.7),
        gradientColor!.withOpacity(0.8),
        gradientColor!,
        gradientColor!,

      ],
    );
  }


  static Widget imageErrorWidget= Padding(padding: const EdgeInsets.all(5),
  child:
  Icon(Icons.photo_library,
  color: AppColor.greyLight,),
  );
  //SvgPicture.asset('assets/delivery.svg'));
  static Widget imageErrorIconWidget=  Icon(Icons.error,
  color: AppColor.white,);
  static Widget placeHolder= const Center(child: CircularProgressIndicator());

  static const double globalRadius= 5.0;


}