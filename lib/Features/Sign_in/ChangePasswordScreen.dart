import 'package:agyal/Core/colors.dart';
import 'package:agyal/Core/image.dart';
import 'package:agyal/Core/user_responsive.dart';
import 'package:agyal/Features/Sign_in/signModel.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:sizer/sizer.dart';

class ChangePasswordScreen extends StatelessWidget {
      ChangePasswordScreen({Key? key}) : super(key: key);
  String? password;


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
                                Center(
                                    child: Image.asset(
                                  UserImage.logo,
                                  fit: BoxFit.contain,
                                )),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "من فضلك ادخل كلمة المرور الجديدة حتى تتمكن ",
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "  من دخول التطبيق",
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          CustomSign(name: " كلمة المرور الجديدة",
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
                          CustomSign(name: "تأكيد كلمة المرور الجديدة",
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
                          Container(

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
                              child: Text(" تغيير ",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Tajawal"
                                ),

                              ),
                            ),

                          ),
                        ]),
                  ),
                ))));
  }
}
