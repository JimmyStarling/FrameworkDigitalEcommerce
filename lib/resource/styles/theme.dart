import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';

/// App Styles Class -> Resource class for storing app level styles constants
class AppStyles {
  // Light Theme
  static ThemeData lightTheme(){
    return ThemeData(
      appBarTheme: AppBarTheme(
                  toolbarTextStyle: const TextTheme(
                      subtitle1: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal)).bodyText2),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.SECONDARY_COLOR,
        secondary: AppColors.PRIMARY_COLOR,
      ),
      inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(16),
          hintStyle: TextStyle(
            color: AppColors.PRIMARY_COLOR,
            fontWeight: FontWeight.normal,
          ),
          labelStyle: TextStyle(
            color: AppColors.PRIMARY_COLOR,
            fontWeight: FontWeight.bold,
          ),
          errorStyle: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        buttonTheme: const ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          )
        ),
        textTheme:ButtonTextTheme.normal,
        buttonColor: AppColors.SECONDARY_COLOR,
      ),
    );
  }
}