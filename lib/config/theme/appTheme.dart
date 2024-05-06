import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/color_maanager.dart';


class AppTheme{
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: ColorManager.primaryColor,
          elevation: 0,
          scrolledUnderElevation: 0
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.primaryColor,
          primary: ColorManager.primaryColor
      ),

      textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 15.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500
          ),
          headlineMedium: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          labelMedium: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 18.sp
          ),
          labelSmall: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: Colors.white
          )
      )
  );
}