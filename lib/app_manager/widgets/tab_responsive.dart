import 'package:flutter/material.dart';



class TabResponsive extends StatelessWidget {

  final Widget child;

  const TabResponsive({super.key, required this.child});


  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width>600?
    Center(
      child: SizedBox(
              width: 600,
              child: child),
    )
        : child;
  }
}
