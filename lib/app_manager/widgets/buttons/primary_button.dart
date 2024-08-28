


import 'package:flutter/material.dart';
import 'package:jressence/app_manager/app_color.dart';
import 'package:jressence/app_manager/constant/constant.dart';
import 'package:jressence/app_manager/text_theme.dart';




class PrimaryButton extends StatelessWidget {

  final Function onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final bool expanded;
  final double? width;
  final double? elevation;
  final Widget? icon;
  final Color? titleColor;

  const PrimaryButton({super.key,
    required this.onPressed,
    required this.title,
    this.padding,
    this.color,
    this.borderColor,
    this.expanded=true,
    this.width,
    this.elevation,
    this.icon,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: width?? (expanded?double.infinity:width),
      child: TextButton(

        style: TextButton.styleFrom(
          elevation: elevation??0,
            shape:  RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(Constant.globalRadius)),
                side: BorderSide(color: borderColor??color??AppColor.primaryColor)
            ),
            padding: padding??  const EdgeInsets.all(10),
          backgroundColor: color??AppColor.primaryColor,

        ),onPressed: (){
        onPressed();

      },child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
        children: [
          icon==null?Container():Padding(
            padding: const EdgeInsets.fromLTRB(0,0,5,0,),
            child: icon,
          ),
          Text(title,
          style: MyTextTheme.mediumWCB.copyWith(
            fontSize: 16,
            color: titleColor
          ),),
        ],
      )),
    );
  }
}
