import 'package:agyal/Core/colors.dart';
import 'package:agyal/Core/image.dart';
import 'package:agyal/Core/routes.dart';
import 'package:agyal/Core/user_responsive.dart';
import 'package:agyal/Features/Sign_in/signModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

import 'package:sizer/sizer.dart';

class SignInScreen extends StatelessWidget {
  GlobalKey<FormState>formkey = GlobalKey<FormState>();
  String? email;
  String? password;

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
                        "English",
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
                      )),

                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Text("تسجيل الدخول",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Form(
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                      CustomSign(name: "ادخال الايميل", hint: "", secure: false,
                      sufix: false,
                      onSaved: (v) {
                        email = v;
                      }
                      ,
                      validator: (v) {
                        if (v
                            .toString()
                            .isEmpty) {
                          return "رجاء ادخال الايميل";
                        }
                      },
                    ),
                    CustomSign(name: "ادخال رقم المرور",
                      hint: "",
                      secure: true,
                      sufix: true,
                      onSaved: (v) {
                        password = v;
                      }
                      ,
                      validator: (v) {
                        if (v
                            .toString()
                            .isEmpty) {
                          return "رجاء ادخال كلمة المرور";
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: ()
                          {
                            Navigator.pushNamed(context, Routes.resetPhonePath);
                          },
                          child: Text("هل نسيت كلمه المرور؟", style: TextStyle(
                              fontSize: 10.sp,
                              color: blueBerry,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold

                          ),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()
                      {
                        Navigator.pushNamed(context, Routes.homePath);
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
                          child: Text("تسجيل الدخول",
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                        width: 27.w,
                        height: 0.1.h,
                        color: Colors.grey[500],
                      ),
                      Text("  للتواصل معنا  ", style: TextStyle(
                        fontFamily: "Tajawal",
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,



                      ),),
                      Container(
                        width: 27.w,
                        height: 0.1.h,
                        color: Colors.grey[500],
                      ),
                        ]
                  ),
                    ),
                        Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(right: 55.0),
                              child: Container(
                                height: 5.h,
                                width: 10.w,
                                child:SvgPicture.asset(UserImage.FaceIcon,fit: BoxFit.cover,) ,

                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Container(
                                height: 5.h,
                                width: 10.w,
                                child:SvgPicture.asset(UserImage.InstaIcon,fit: BoxFit.cover,) ,

                            ),
                          ),
                             Padding(
                               padding: const EdgeInsets.only(right: 30.0),
                               child: Container(
                                height: 5.h,
                                width: 10.w,
                                child:SvgPicture.asset(UserImage.TwitterIcon,fit: BoxFit.cover,) ,

                               ),
                             ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 30.0),
                                 child: Container(
                              height: 5.h,
                              width: 10.w,
                              child:SvgPicture.asset(UserImage.msg,fit: BoxFit.cover,) ,


                                 ),
                               ),

                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            children: [
                              Text("تخطي"
                                , style: TextStyle(
                                    fontFamily: "Tajawal",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: blueBerry
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("مدرس"
                                  , style: TextStyle(
                                      fontFamily: "Tajawal",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      color: blueBerry
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                  ],
                ),
              ),
            ),

            ],
        ),
      ),
    ),
          ),)
    )
    ,
    );

  }
}
