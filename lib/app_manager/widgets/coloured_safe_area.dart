





import 'package:flutter/material.dart';
import 'package:jressence/app_manager/app_color.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;
  final Color? color;

  const ColoredSafeArea(
      {super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? AppColor.primaryColor,
      child: SafeArea(
        child: child,
      ),
    );
  }
}

