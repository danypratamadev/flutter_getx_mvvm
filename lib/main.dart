import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/shared/routes/routes.dart';
import 'package:flutter_getx_mvvm/shared/routes/routes_name.dart';
import 'package:flutter_getx_mvvm/shared/theme/theme.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX - MVVM',
      theme: AppTheme().theme,
      getPages: AppRoutes().routes,
      initialRoute: RoutesName.rootRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
