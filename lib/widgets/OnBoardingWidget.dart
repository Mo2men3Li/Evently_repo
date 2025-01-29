import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingWidget extends StatelessWidget {
  OnBoardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          height: 357.h,
          width: 357.w,
        ),
        SizedBox(
          height: 38.h,
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 38.h,
        ),
        Text(
          description,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
