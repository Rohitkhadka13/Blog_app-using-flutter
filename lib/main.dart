import 'package:blog_app/core/constants/strings.dart';
import 'package:blog_app/core/themes/app_theme.dart';
import 'package:blog_app/presentation/router/router_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: MyStrings.appName,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          routerConfig: fRoutes,
          debugShowCheckedModeBanner: false,
        );
      }
    );
  }
}
