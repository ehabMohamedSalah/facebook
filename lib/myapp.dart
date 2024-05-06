import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_work/presentaion/home/MyHomePage.dart';

import 'config/theme/appTheme.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return     ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return     MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
          theme:AppTheme.lightTheme ,

        );
      },
    ) ;
  }
}
