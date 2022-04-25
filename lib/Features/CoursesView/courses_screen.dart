import 'package:agyal/Core/colors_manager.dart';
import 'package:agyal/Core/font_manager.dart';
import 'package:agyal/Core/image_manager.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/app_bar.dart';
import '../../Widgets/customer_scaffold.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomerScaffold(
      appBar: CustomerAppBar(
          title: "الكورسات",
          onTap:(){},
          icon: UserImage.video
      ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 17,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.7),
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.all(5.sp),
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                            color : Colors.white,
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: LayoutBuilder(
                                  builder: (context, constrains) {
                                    return Container(
                                        width: constrains.maxWidth,
                                        height: constrains.maxHeight,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(UserImage.courseImage),
                                              fit: BoxFit.cover,
                                              opacity: 0.8,
                                            )
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            UserImage.display,
                                            width: 40.sp,
                                            height: 40.sp,
                                          ),
                                        )
                                    );
                                  }
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.sp , vertical: 15.sp),
                              child: Text(
                                "_ كورس اسكراتش اسكراتش اسكراتش اسكراتش",
                                style: TextStyle(
                                    fontFamily: UserFont.Tajawal,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Arabic",
                                  style: TextStyle(
                                      fontFamily: UserFont.Tajawal,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.sp , right: 2.sp , left: 2.sp),
                                  child: Image.asset(UserImage.internet , width: 9.sp , height: 9.sp,color: grey,),
                                ),
                                Spacer(),
                                Text(
                                  "30 houres",
                                  style: TextStyle(
                                      fontFamily: UserFont.Tajawal,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.sp , right: 2.sp , left: 2.sp),
                                  child: Icon(Icons.access_time , size: 10.sp,),
                                ),
                                Spacer(),
                                Text(
                                  "3.4",
                                  style: TextStyle(
                                      fontFamily: UserFont.Tajawal,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.sp , right: 2.sp , left: 2.sp),
                                  child: SvgPicture.asset(UserImage.star , width: 9.sp , height: 9.sp, color: grey,),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }
                ),
              )
            ],
          ),
        )
    );
  }
}
