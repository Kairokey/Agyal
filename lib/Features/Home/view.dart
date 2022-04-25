import 'package:agyal/Core/font_manager.dart';
import 'package:agyal/Core/image_manager.dart';
import 'package:agyal/Widgets/customer_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../Core/colors_manager.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return CustomerScaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.sp,
        title: Row(
          children: [
            Container(
              width: 25.sp,
              margin: EdgeInsets.only(right: 15.sp),
              child: Image.asset(
                UserImage.profile,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding : EdgeInsets.symmetric(horizontal: 5.sp),
              child: Text(
                "اهلا ساره",
                style: TextStyle(
                  fontFamily: UserFont.Tajawal,
                  color: black
                ),
              ),
            ),

            SvgPicture.asset(
              UserImage.image1,
              fit: BoxFit.contain,
            ),
          ],
        ),
        actions: [
          Container(
            width: 18.sp,
            margin: EdgeInsets.symmetric(horizontal: 15.sp),
            child: SvgPicture.asset(
              UserImage.notifications,
              color: Colors.black,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
