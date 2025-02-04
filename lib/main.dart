import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/providers/my_provider.dart';
import 'package:evently_app/screens/introduction_screen.dart';
import 'package:evently_app/screens/onBoarding.dart';
import 'package:evently_app/utiles/base_theme.dart';
import 'package:evently_app/utiles/dark_theme.dart';
import 'package:evently_app/utiles/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: const EventlyApp(),
      ),
    ),
  );
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    BaseTheme lightTheme = LightTheme();
    BaseTheme darkTheme = DarkTheme();
    return ScreenUtilInit(
      designSize: const Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: lightTheme.theme,
        darkTheme: darkTheme.theme,
        themeMode: provider.themeMode,
        routes: {
          IntroductionScreen.routeName: (context) => const IntroductionScreen(),
          OnBoarding.routeName: (context) => OnBoarding(),
        },
        initialRoute: IntroductionScreen.routeName,
      ),
    );
  }
}
