
import 'package:get/get.dart';
import 'package:jressence/Pages/Login/login_binding.dart';
import 'package:jressence/Pages/Login/login_view.dart';

class AppRoutes {
  static const String login = '/login_view';





  static List<GetPage> pages = [

    GetPage(
      name: login,
      page: () => const LoginView(),
      bindings: [LoginBinding()],
    ),

  ];
}