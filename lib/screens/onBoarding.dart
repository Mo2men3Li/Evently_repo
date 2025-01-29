import 'package:evently_app/widgets/OnBoardingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  static String routeName = 'Onboarding';

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int index = 0;
  late final pageController = PageController(
    initialPage: index,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage(
            'assets/images/title.png',
          ),
          height: 50.h,
          width: 159.w,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 650.h,
              child: PageView(
                controller: pageController,
                onPageChanged: (position) {
                  setState(() {
                    index = position;
                  });
                },
                children: [
                  OnBoardingWidget(
                    title: 'Find Events That Inspire You',
                    description:
                        "Dive into a world of events crafted to fit your unique interests. Whether you're into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.",
                    image: 'assets/images/onBoarding1.png',
                  ),
                  OnBoardingWidget(
                    title: 'Effortless Event Planning',
                    description:
                        "Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.",
                    image: 'assets/images/onBoarding2.png',
                  ),
                  OnBoardingWidget(
                    title: 'Connect with Friends & Share Moments',
                    description:
                        "Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.",
                    image: 'assets/images/onBoarding3.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            index == 0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40.w,
                      ),
                      AnimatedSmoothIndicator(
                        curve: Curves.bounceInOut,
                        activeIndex: index,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          radius: 4,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: Color(
                            0xff1C1C1C,
                          ),
                          activeDotColor: Theme.of(context).primaryColor,
                        ),
                      ),
                      Container(
                        height: 37.h,
                        width: 37.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            26.r,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          icon: Icon(
                            color: Theme.of(context).primaryColor,
                            Icons.arrow_forward_rounded,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            26.r,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          icon: Icon(
                            color: Theme.of(context).primaryColor,
                            Icons.arrow_back_outlined,
                          ),
                        ),
                      ),
                      AnimatedSmoothIndicator(
                        curve: Curves.bounceInOut,
                        activeIndex: index,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          radius: 4,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: Color(
                            0xff1C1C1C,
                          ),
                          activeDotColor: Theme.of(context).primaryColor,
                        ),
                      ),
                      Container(
                        height: 37.h,
                        width: 37.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            26.r,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          icon: Icon(
                            color: Theme.of(context).primaryColor,
                            Icons.arrow_forward_rounded,
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
