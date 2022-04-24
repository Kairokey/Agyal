import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sizer/sizer.dart';

import '../../Core/colors.dart';
import '../../Core/image.dart';
import '../OnBoardingScreen/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splashTransition: SplashTransition.fadeTransition,
          duration: 300,
          nextScreen: const OnBoardingScreen(),
          splash: Container(
            color: blueBerry,
            alignment: Alignment.center,
            width: 100.sp,
            height: 100.sp,
            child: Column(
              children: [
                Spacer(),
                LayoutBuilder(
                    builder: (context , constraints) => Container(
                        width: 80.sp,
                        height: 65.sp,
                        child: Image.asset(
                          UserImage.logo,
                          fit: BoxFit.contain,
                        )
                    )
                ),
                Spacer(),
                LayoutBuilder(
                    builder: (context , constraints) => Container(
                        width: 120.sp,
                        height: 30.sp,
                        child: Image.asset(
                          UserImage.poweredBy,
                          fit: BoxFit.contain,
                        )
                    )
                ),
                SizedBox(height: 20.sp,)
              ],
            )
          )
      )
    );
  }
}
