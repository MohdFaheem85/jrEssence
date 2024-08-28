




import 'package:flutter/material.dart';
import 'package:jressence/app_manager/app_color.dart';


class PrimaryBackButton extends StatelessWidget {
  final Color? color;
  const PrimaryBackButton({super.key,
  this.color
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon:  Icon(Icons.keyboard_backspace_outlined,
    size: 30,
    color: color??AppColor.black,));
  }
}
