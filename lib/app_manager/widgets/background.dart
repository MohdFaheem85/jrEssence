

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({super.key, required this.child,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gym_bg.png"),
          fit: BoxFit.cover
        )
      ),
      child: Container(
          color: Colors.black54,
          child: child),
    );
  }
}