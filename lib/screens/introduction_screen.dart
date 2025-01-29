import 'package:evently_app/utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: Image(
          image: AssetImage(
            'assets/images/title.png',
          ),
          height: 50.h,
          width: 159.w,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 28.h,
            ),
            Image(
              image: AssetImage(
                'assets/images/home.png',
              ),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              'Personalize Your Experience',
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              'Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language',
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.flag),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(

                      ),
                    ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.flag),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Theme',
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.flag),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(

                      ),
                    ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.flag),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Let's Start",
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(16),
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
