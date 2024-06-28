import 'package:flutter_getx_mvvm/bindings/user_binding.dart';
import 'package:flutter_getx_mvvm/shared/routes/routes_name.dart';
import 'package:flutter_getx_mvvm/views/pages/home.dart';
import 'package:flutter_getx_mvvm/views/pages/splash.dart';
import 'package:get/route_manager.dart';

class AppRoutes {

  final routes = [
    GetPage(name: RoutesName.rootRoute, page: () => const SplashPage()),
    GetPage(name: RoutesName.homeRoute, page: () => const HomePage(), binding: UserBinding()),
  ];

}