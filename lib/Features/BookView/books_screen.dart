import 'package:agyal/Core/font_manager.dart';
import 'package:agyal/Core/image_manager.dart';
import 'package:agyal/Widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../../Core/colors_manager.dart';
class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: CustomerAppBar(
            onTap: (){},
            title: "الكتب",
            icon: UserImage.book
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 17,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.65),
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 30.sp , bottom: 5.sp , right: 5.sp , left: 5.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: LayoutBuilder(
                                  builder: (context, constrains) {
                                    return Container(
                                      width: constrains.maxWidth,
                                      height: constrains.maxHeight,
                                      child:  Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            bottom:0,
                                            child: Container(
                                              width: constrains.maxWidth * 0.9,
                                              height: constrains.maxWidth * 0.8,
                                              decoration: BoxDecoration(
                                                  color: HexColor("#F59CAB"),
                                                borderRadius: BorderRadius.circular(5.sp)
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 15.sp,
                                              child: Container(
                                                  width: constrains.maxWidth * 0.95,
                                                  height: constrains.maxHeight * 0.9,
                                                  child: Center(
                                                    child: Image.asset(
                                                      UserImage.bookCover,
                                                    ),
                                                  )
                                              )
                                          )
                                        ],
                                      ),
                                    );
                                  }
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                      "لعبه الثقه",
                                    style: TextStyle(
                                      fontFamily: UserFont.Tajawal,
                                        letterSpacing: 1,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4.sp , right: 2.sp , left: 2.sp),
                                    child: SvgPicture.asset(UserImage.bookAuth),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.sp),
                              child: Text(
                                  "الكاتب: ماريا كوننيكوفا",
                                  style: TextStyle(
                                      fontFamily: UserFont.Tajawal,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1
                                  ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 1.sp , right: 3.sp , left: 3.sp),
                              decoration: BoxDecoration(
                                  color : Colors.blue,
                                  borderRadius: BorderRadius.circular(25.sp)
                              ),
                              child: Text(
                                "  7 صفحات  ",
                                style: TextStyle(
                                    fontFamily: UserFont.Tajawal,
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  color: white
                                ),
                              ),
                            )
                          ]
                        )
                      );
                    }
                )
              )
            ]
          )
        )
      )
    );
  }
}
