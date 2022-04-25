import 'package:agyal/Core/user_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../Core/colors_manager.dart';
import '../Core/image_manager.dart';

CustomerAppBar({required onTap ,required title ,required icon , PreferredSize? bottom , double? toolbarHeight}){
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            icon,
            width: 27.sp,
            height: 20.sp,
          ),
        ),
        Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )
        ),
      ],
    ),
    leading: SizedBox(width: 35.sp,),
    bottom: bottom,
    toolbarHeight: toolbarHeight == null ? 50.sp : null,
    backgroundColor: Colors.transparent,
    elevation: 0,
    automaticallyImplyLeading: false,
    actions: [
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Icon(
            Icons.arrow_forward_ios,
            size: 15.sp,
            color: black,
          ),
        ),
      )
    ],
  );
}