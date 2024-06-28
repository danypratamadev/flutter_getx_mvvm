import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/text.dart';
import 'package:flutter_getx_mvvm/shared/routes/routes_name.dart';
import 'package:flutter_getx_mvvm/shared/routes/routes_navigators.dart';
import 'package:flutter_getx_mvvm/shared/theme/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 1500), 
      () => RoutesNavigators.pushReplacement(route: RoutesName.homeRoute)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final themeApp = Theme.of(context);

    return Scaffold(
      backgroundColor: themeApp.primaryColor,
      body: SafeArea(
        child: Center(
          child: LargeHeadlineText(
            label: 'Flutter App',
            textColor: AppColors.whiteTextColor,
          ),
        ),
      ),
    );
  }
}