import 'package:agyal/Core/colors.dart';
import 'package:agyal/Core/image.dart';
import 'package:agyal/Core/routes.dart';
import 'package:agyal/Core/user_responsive.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:ui' as ui;

import 'package:sizer/sizer.dart';

class OtpScreen extends StatelessWidget {
   OtpScreen({Key? key}) : super(key: key);
  OtpFieldController otpController = OtpFieldController();
 CountDownController controller = CountDownController();

   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: ui.TextDirection.rtl,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height * 0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15.sp,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Text(
                        "",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100.sp,
                    height: 100.sp,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Image.asset(
                          UserImage.logo,
                          fit: BoxFit.contain,
                        )
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text("من فضلك ادخل كود التفعيل المٌرسل لك على ",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(" رقم الجوال",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text("كود التفعيل",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Center(
                    child:Container(
                      height: 45.sp,
                      width: 220.sp,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10.sp)
                     ),
                      child:  Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: OTPTextField(
                          length: 4,
                          controller: otpController,
                          width: MediaQuery.of(context).size.width,
                          fieldWidth: 25,
                          style:const TextStyle(fontSize: 17),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.underline,
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          },
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                        ),
                      ),
                      ),
                    ),
                  InkWell    (
                    onTap: ()
                  {
                  controller.start();
                  Navigator.pushNamed(context, Routes.changePasswordScreenPath);
                  },
                      child: Container(

                        margin: EdgeInsets.only(top: 15.sp),
                        width: SetResponsive.get(
                            context: context,
                            mobile: SetResponsive.width(context) * 0.9,
                            tablet: 165.sp

                        ),
                        height: SetResponsive.get(
                            context: context,
                            mobile: 40.sp,
                            tablet: 35.sp
                        ),
                        decoration: BoxDecoration(
                            color: blueBerry,
                            border: Border.all(color: blueBerry),
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Center(
                          child: Text(" ادخال ",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Tajawal"
                            ),

                          ),
                        ),

                      ),
                    ),
                  SizedBox(height: 4.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: ()
                        {
                          controller.restart();
                        },
                        child: Text(" إعادة ارسال الكود ",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Tajawal"
                          ),),
                      ),
                    SizedBox(width: 4.sp,),
                    CircularCountDownTimer(
                    duration: 45,
                    initialDuration: 0,
                    controller: controller,
                    width: MediaQuery.of(context).size.width / 10.0,
                    height: MediaQuery.of(context).size.height / 10.0,
                    ringColor: Colors.white,
                    ringGradient: null,
                    fillColor: blueBerry,
                    fillGradient: null,
                    backgroundGradient: null,
                    strokeWidth: 2.0,
                    strokeCap: StrokeCap.round,
                    textStyle:const TextStyle(
                        fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.S,
                    isReverse: false,
                    isReverseAnimation: false,
                    isTimerTextShown: true,
                    autoStart: false,
                    onStart: () {
                      debugPrint('Countdown Started');
                    },
                    onComplete: () {
                      debugPrint('Countdown Ended');
                    },
                  ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),

)
    );
  }
}
