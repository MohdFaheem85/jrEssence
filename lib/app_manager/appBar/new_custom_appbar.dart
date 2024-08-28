//
//
// import 'package:app_manager/app_manager/app_color.dart';
// import 'package:app_manager/app_manager/text_theme.dart';
// import 'package:app_manager/app_manager/widgets/buttons/back_button.dart';
// import 'package:flutter/material.dart';
//
// class NewCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final List<Widget>? actions;
//   const NewCustomAppBar({Key? key,
//
//     this.title,
//     this.actions,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         AppBar(
//           toolbarHeight: 40,
//           leading:  PrimaryBackButton(
//               color: AppColor.black
//           ),
//           actions: actions,
//           centerTitle: false,
//           backgroundColor:   Colors.transparent,
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(15,10,0,0),
//           child: Text(title??'',
//             style: MyTextTheme.largeBCB.copyWith(
//               fontSize: 22,
//               fontWeight: FontWeight.bold
//             ),),
//         )
//       ],
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
