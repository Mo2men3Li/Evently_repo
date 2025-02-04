import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/providers/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

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
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              "introTitle".tr(),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              "introDesc".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 28.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'language'.tr(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      ),
                ),
                ToggleSwitch(
                  minWidth: 73.5.w,
                  minHeight: 30.5.h,
                  initialLabelIndex: context.locale.toString()=="en"?0:1,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons: [
                    FontAwesomeIcons.flagUsa,
                    MdiIcons.abjadArabic,
                  ],
                  iconSize: 30.0,
                  activeBgColors: [
                    [
                      Colors.yellow,
                      Colors.orange,
                    ],
                    [
                      Theme.of(context).primaryColor,
                    ],
                  ],
                  animate: true,
                  // with just animate set to true, default curve = Curves.easeIn
                  curve: Curves.bounceInOut,
                  // animate must be set to true when using custom curve
                  onToggle: (index) {
                    if (index == 1) {
                      context.setLocale(Locale('ar'));
                      print(context.locale.toString());
                    }
                    else{
                      context.setLocale(Locale('en'));
                      print(context.locale.toString());
                    }
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'theme'.tr(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                ToggleSwitch(
                  minWidth: 73.5.w,
                  minHeight: 30.5.h,
                  initialLabelIndex: provider.themeMode==ThemeMode.light? 0:1,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons: [
                    FontAwesomeIcons.solidSun,
                    FontAwesomeIcons.moon,
                  ],
                  iconSize: 24,
                  activeBgColors: [
                    [
                      Colors.yellow,
                      Colors.orange,
                    ],
                    [
                      Theme.of(context).primaryColor,
                    ],
                  ],
                  animate: true,
                  curve: Curves.bounceInOut,
                  onToggle: (index) {
                    provider.changeTheme();
                    print('switched to: $index');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              child: Text(
                "Let's Start",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
