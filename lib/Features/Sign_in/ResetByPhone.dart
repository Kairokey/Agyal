import 'package:agyal/Core/colors.dart';
import 'package:agyal/Core/image.dart';
import 'package:agyal/Core/routes.dart';
import 'package:agyal/Core/user_responsive.dart';
import 'package:agyal/Features/Sign_in/otpScreen.dart';
import 'package:agyal/Features/Sign_in/signModel.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:sizer/sizer.dart';

class PhoneScreen extends StatelessWidget {
   PhoneScreen({Key? key}) : super(key: key);
  GlobalKey<FormState>formKey = GlobalKey<FormState>();
   String? PhoneNumper;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: ui.TextDirection.rtl,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(MediaQuery
                  .of(context)
                  .size
                  .width, MediaQuery
                  .of(context)
                  .size
                  .height * 0.2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {

                      },
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
              child: SafeArea(
                child: Center(
                  child: Column(
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
                      Text("من فضلك ادخل رقم الجوال حتى تتمكن من تغيير ",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text("كلمة المرور الخاصة بك",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                        Form(
                        key:formKey,
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                        CustomSign(name: "رقم الجوال", hint: "", secure: false,
                        sufix: false,
                        onSaved: (v) {
                        PhoneNumper = v;
                        }
                        ,
                        validator: (v) {
                        if (v
                            .toString()
                            .isEmpty) {
                        return "رجاء ادخال رقم الجوال";
                        }
                        },
                        ),
                          InkWell(
                            onTap: ()
                            {
                              Navigator.pushNamed(context, Routes.otpScreenPath);
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
                                child: Text(" ارسال ",
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
                    ],
                  ),
                ),
              ),
          ]
          ),
        )
    ),
            )
    )
        )
    );
  }
}