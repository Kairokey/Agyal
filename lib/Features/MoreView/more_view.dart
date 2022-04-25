import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../Core/colors_manager.dart';
import '../../Core/font_manager.dart';
import '../../Core/image_manager.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/customer_scaffold.dart';
import 'more_model.dart';
class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<MoreModel> moreModel = [
    MoreModel(title: 'الغياب ' , image: UserImage.absence,
        color : Colors.cyanAccent),
    MoreModel(title: 'المتابعه اليوميه' , image: UserImage.dailyFollowUp,
        color : Colors.orange),
    MoreModel(title: 'جدول الحصص' , image: UserImage.dailySchedule,
        color : Colors.purple),
    MoreModel(title: 'نتايج الامتحانات' , image: UserImage.latestNews,
        color : Colors.lightGreenAccent),
    MoreModel(title: 'الامتحانات الاونلاين' , image: UserImage.onlineExam,
        color : Colors.deepPurple),
    MoreModel(title: 'اخر الاخبار' , image: UserImage.latestNews,
        color : Colors.blue),
    MoreModel(title: 'عن المدرسه' , image: UserImage.aboutSchool,
        color : Colors.blue.shade900),
    MoreModel(title: 'معرض الصور' , image: UserImage.gallery,
        color : Colors.pinkAccent),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomerScaffold(
        appBar: CustomerAppBar(
            title: "المزيد",
            onTap:(){},
            icon: UserImage.more
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: moreModel.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.all(5.sp),
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                            color: moreModel[index].color,
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Container(
                                    width: constraints.maxHeight * 0.7,
                                    height: constraints.maxHeight * 0.7,
                                    child: SvgPicture.asset(
                                      moreModel[index].image,
                                    ),
                                  );
                                }
                            )
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Text(
                                moreModel[index].title,
                                style: TextStyle(
                                    fontFamily: UserFont.Tajawal,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                  color: white
                                ),
                              ),
                            ),
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
