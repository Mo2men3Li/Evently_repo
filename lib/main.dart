import 'package:evently_app/screens/introduction_screen.dart';
import 'package:evently_app/screens/onBoarding.dart';
import 'package:evently_app/utiles/base_theme.dart';
import 'package:evently_app/utiles/dark_theme.dart';
import 'package:evently_app/utiles/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const EventlyApp());
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseTheme lightTheme=LightTheme();
    BaseTheme darkTheme=DarkTheme();
     return ScreenUtilInit(
      designSize: const Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme.theme,
        darkTheme: darkTheme.theme,
        routes: {
          IntroductionScreen.routeName: (context) =>  const IntroductionScreen(),
          OnBoarding.routeName: (context) =>  OnBoarding(),
        },
        initialRoute: OnBoarding.routeName,
      ),
    );
  }
}



