//
//
// import 'package:flutter/material.dart';
// import 'package:app_manager/app_manager/app_color.dart';
// import 'package:app_manager/app_manager/widgets/buttons/back_button.dart';
//
// import '../text_theme.dart';
//
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final List<Widget>? actions;
//   const CustomAppBar({Key? key,
//
//      this.title,
//     this.actions,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading:  PrimaryBackButton(
//         color: AppColor.black
//       ),
//       actions: actions,
//       centerTitle: false,
//       backgroundColor:   Colors.transparent,
//       flexibleSpace: FlexibleSpaceBar(
//         title:  Text(title??'',
//           style: MyTextTheme.largeBCB,),
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
