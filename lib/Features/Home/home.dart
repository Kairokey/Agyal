import 'package:agyal/Core/colors.dart';
import 'package:agyal/Core/image.dart';
import 'package:agyal/Features/SplashScreen/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/user_responsive.dart';

class Home extends StatefulWidget {
  static String id = "Home";
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int index = 0 ;
  final List _screen = const[
    Center(child: Text( "More" ),),
    Center(child: Text( "Book" ),),
    Center(child: Text( "Video" ),),
    Center(child: Text( "Chat" ),),
    Center(child: Text( "Home" ),),
  ];

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: key,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value ;
            });
          },
          selectedItemColor: blueBerry,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          iconSize: 25.sp,
          showSelectedLabels: false,
          currentIndex: index,
          items: [
            getBottomNavigationBar(UserImage.more  , 0),
            getBottomNavigationBar(UserImage.book  , 1),
            getBottomNavigationBar(UserImage.video , 2),
            getBottomNavigationBar(UserImage.chat  , 3),
            getBottomNavigationBar(UserImage.home  , 4),
          ],
        ),
        body: Column(
          children: [
            ModalProgressHUD(
                inAsyncCall: false,
                progressIndicator:
                SpinKitFadingCircle(color: blueBerry,),
                child: Expanded(child: _screen[index])
            )
          ],
        ),
      ),
    ));
  }
  getTitle(index){
    switch(index){
      case 1 :
        return "LocaleKeys.favorite.tr()";
      case 2 :
        return" LocaleKeys.orderDetail.tr(";
      case 3 :
        return "LocaleKeys.setting.tr()";
      default :
        return "LocaleKeys.home.tr()";
    }
  }
  getLeading(index){
    switch(index){
      case 1 :
      case 2 :
      case 3 :
        return const BackButton(color: Colors.black,);
      default :
        return IconButton(
            onPressed: (){
              key.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu , color: Colors.black,size: 20.sp,)
        );
    }
  }
  getTail(index , context ){
    switch(index){
      case 1 :
      case 3 :
        return Container();
      case 2 :
        return IconButton(
            onPressed: (){},
            icon: Icon(Icons.help , color: Colors.white,size: 20.sp,)
        );
        return "Setting";
      default :
        return
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search , color: Colors.white ,size: 20.sp,)
          );
    }
  }
   getBottomNavigationBar(String path , int selected){
    return BottomNavigationBarItem(
      icon: Container(
      child: SvgPicture.asset(
          path,
        color: index != selected ? Colors.grey : null,
      ),
    ),
    label: ""
    );
  }
}
