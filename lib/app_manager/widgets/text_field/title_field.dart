



import 'package:flutter/material.dart';
import '../../text_theme.dart';


class TitleField extends StatelessWidget {
  final String title;
  final Widget child;
  const TitleField({super.key,
  required this.title,
  required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: MyTextTheme.mediumBCB,),
        const SizedBox(height: 5,),
        child
      ],
    );
  }
}


class SmallTitleField extends StatelessWidget {
  final String title;
  final Widget child;
  const SmallTitleField({super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: MyTextTheme.smallBCB,),
        const SizedBox(height: 1,),
        child
      ],
    );
  }
}
