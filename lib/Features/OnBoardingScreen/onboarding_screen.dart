import 'package:agyal/Core/colors_manager.dart';
import 'package:agyal/Core/image_manager.dart';
import 'package:agyal/Core/user_responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Core/routes.dart';
part 'units/single_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int selectedIndex = 0;
  PageController controller = PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
  @override
  Widget build(BuildContext context) {
    String text = "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة ، لقد تم توليد ، هذا النص ، من مولد النص العربي .";
    print("******************************** ReBuild ********************************");
    var pages = [
      getPages(text,UserImage.onBoarding1 ,context),
      getPages(text, UserImage.onBoarding2, context),
      getPages(text , UserImage.onBoarding3, context),
    ];
    return SafeArea(
        child: Directionality(
            textDirection: ui.TextDirection.rtl,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size(MediaQuery.of(context).size.width  , MediaQuery.of(context).size.height *0.2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () async {
                          // Navigator.push(context,  MaterialPageRoute(
                          //     builder: (context) => LogIn()
                          // )
                          //);
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
                        onTap: () async {
                          setState(() {
                          });
                        },
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
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: SetResponsive.height(context) * 0.1),
                      SizedBox(
                        width: MediaQuery.of(context).size.width ,
                        height: SetResponsive.get(
                            context: context,
                            mobile: SetResponsive.height(context) * 0.50,
                            tablet: SetResponsive.height(context) * 0.55
                        ),
                        child: PageView.builder(
                          controller: controller,
                          allowImplicitScrolling: true,
                          itemCount: 3,
                          // itemCount: pages.length,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          onPageChanged: (v) {
                            setState(() {
                              setState(() {
                                selectedIndex = v;
                              });
                            });
                          },
                          itemBuilder: (_, index) {
                            return pages[index];
                          },
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: controller,
                        count: pages.length,
                        effect: ExpandingDotsEffect(
                            dotHeight: 7.sp,
                            dotWidth: 14.sp,
                            activeDotColor: Colors.orange,
                          dotColor: Colors.orange.shade200
                          // strokeWidth: 5,
                        ),
                      ),
                      SizedBox(height: 40.sp),
                      InkWell(
                        onTap: () async{
                          print(selectedIndex);
                          if (selectedIndex == 2) {
                            Navigator.pushNamed(context, Routes.homePath);
                          } else{
                            controller.jumpToPage(selectedIndex + 1);
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 5.sp),
                          width: SetResponsive.get(
                              context: context,
                              mobile: SetResponsive.width(context) * 0.5,
                              tablet: 165.sp
                          ),
                          height: SetResponsive.get(
                              context: context,
                              mobile: 40.sp,
                              tablet: 35.sp
                          ),
                          decoration: BoxDecoration(
                              color : selectedIndex == 2 ? blueBerry: Colors.white,
                              border: Border.all(color : selectedIndex == 2 ? Colors.white : blueBerry),
                              borderRadius: BorderRadius.circular(5.sp)
                          ),
                          child: Center(
                            child: Text(
                              selectedIndex == 2 ? "ابدء الان" : "تخطي",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                color: selectedIndex == 2 ? Colors.white : blueBerry,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}
