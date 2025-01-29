import 'package:evently_app/utiles/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme extends BaseTheme{

  @override
  Color get backgroundColor => Color(0xffF2FEFF);

  @override
  Color get primaryColor => Color(0xff5669FF);

  @override
  Color get textColor => Color(0xff1c1c1c);

  @override
  ThemeData get theme => ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundColor,
          centerTitle: true,
    ),
        textTheme: TextTheme(
          titleSmall: GoogleFonts.inter(
            fontSize: 16.sp,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

}
