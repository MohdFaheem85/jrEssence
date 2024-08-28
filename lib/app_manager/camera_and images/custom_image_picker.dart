//
// import 'package:app_manager/app_manager/bottomSheet/bottom_sheet.dart';
// import 'package:app_manager/app_manager/bottomSheet/titled_sheet.dart';
// import 'package:app_manager/app_manager/camera_and%20images/image_picker.dart';
// import 'package:app_manager/app_manager/navigator.dart';
// import 'package:app_manager/app_manager/widgets/buttons/custom_ink_well.dart';
// import 'package:app_manager/app_manager/widgets/selection_box.dart';
// import 'package:app_manager/authenticaton/user_repository.dart';
//
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:provider/provider.dart';
//
// import '../app_color.dart';
//
//
//
//
// class CustomImagePicker extends StatelessWidget {
//
//   final Widget child;
//   final ValueChanged onReceiveFilePath;
//
//   const CustomImagePicker({Key? key,
//     required this.child,
//     required this.onReceiveFilePath,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     UserRepository user=Provider.of<UserRepository>(context);
//     return CustomInkWell(
//       color: Colors.transparent,
//         onTap: (){
//
//       if(user.getUser.id==null){
//         // print('Login');
//         // MyNavigator.push(context, const LoginView());
//       }else{
//         CustomBottomSheet.open(context,
//             child: TitledSheet(title: "Choose Image", child:
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CustomInkWell(
//                   onTap: () async{
//                     Navigator.pop(context);
//                     CroppedFile? filePath= await MyImagePicker.pickImageFromCamera();
//                     onReceiveFilePath(filePath?.path);
//                   },
//                   child:  const SelectionBox(
//                     title: "Camera",
//                     iconData: Icons.camera_alt,
//                     description: "Click image using camera",
//                     image: 'assets/camera.png',
//                   ),
//                 ),
//
//                 CustomInkWell(
//                   onTap: () async{
//                     Navigator.pop(context);
//                     CroppedFile filePath= await MyImagePicker.pickImageFromGallery();
//                     onReceiveFilePath(filePath.path);
//                   },
//                   child:  const SelectionBox(
//                     title: "Gallery",
//                     iconData: Icons.image,
//                     description: "Select Image from gallery",
//                     image: 'assets/gallery.png',
//                   ),
//                 ),
//               ],
//             )
//             ));
//       }
//
//       }, child: child);
//   }
// }
