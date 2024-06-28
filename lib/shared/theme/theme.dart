import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_mvvm/shared/theme/colors.dart';
import 'package:flutter_getx_mvvm/shared/theme/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  final theme = ThemeData(
    fontFamily: GoogleFonts.roboto().fontFamily,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    colorScheme: ColorScheme.fromSwatch(
      backgroundColor: AppColors.backgroundColor,
      primarySwatch: Colors.indigo,
      brightness: Brightness.light,
    ),
    primaryColor: AppColors.primaryColor,
    primarySwatch: Colors.blue,
    cardColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      toolbarHeight: AppDimens.appBarSize,
      backgroundColor: AppColors.scaffoldColor,
      elevation: AppDimens.quaternaryDividerSize,
      shadowColor: Colors.black45,
      scrolledUnderElevation: AppDimens.quaternaryDividerSize,
      titleTextStyle: TextStyle(
        color: AppColors.primaryTextColor,
      ),
      iconTheme: IconThemeData(
        color: AppColors.primaryIconColor,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.scaffoldColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.scaffoldColor,
      ),
    ),
    textTheme: TextTheme(
      displaySmall: TextStyle(
        color: AppColors.primaryTextColor
      ),
      headlineMedium: TextStyle(
        color: AppColors.primaryTextColor
      ),
      headlineSmall: TextStyle(
        color: AppColors.primaryTextColor
      ),
      titleLarge: TextStyle(
        color: AppColors.primaryTextColor
      ),
      titleMedium: TextStyle(
        color: AppColors.primaryTextColor,
      ),
      bodyLarge: TextStyle(
        color: AppColors.primaryTextColor
      ),
      bodyMedium: TextStyle(
        color: AppColors.primaryTextColor
      ),
      bodySmall: const TextStyle(
        color: AppColors.secondaryTextColor
      ),
      labelLarge: TextStyle(
        color: AppColors.primaryTextColor,
      ),
      labelSmall: const TextStyle(
        color: AppColors.tertiaryTextColor
      ),
    ),
    useMaterial3: false,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  
}