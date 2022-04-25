import 'package:agyal/Core/font_manager.dart';
import 'package:agyal/Core/user_responsive.dart';
import 'package:agyal/Widgets/customer_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../Core/colors_manager.dart';
import '../../Core/image_manager.dart';
import '../../Widgets/app_bar.dart';
part 'units/sended_message.dart';
part 'units/received_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // length of tabs
      initialIndex: 0,
      child: CustomerScaffold(
        appBar: CustomerAppBar(
            onTap: (){},
            title: "الدعم",
            icon: UserImage.chat,
          bottom: PreferredSize(
            preferredSize: Size(SetResponsive.width(context) , 60.sp),
              child: TabBar(
                tabs: [
                  Text(
                      "مدرس الفصل",
                    style: TextStyle(
                      fontFamily: UserFont.Tajawal,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: black
                    ),
                  ),
                  Text(
                    "مدرس الفصل",
                    style: TextStyle(
                        fontFamily: UserFont.Tajawal,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: black
                    ),
                  ),
                ],
              ),
          )
        ),
        body:  TabBarView(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.sp
                  ),
                  child: Column(
                    children: [
                      SendedMessage(
                        message: "هنا يكتب نص الرساله"  ,
                        date: DateTime.now().hour,
                      ),
                      ReceivedMessage(
                        message: "هنا يكتب نص الرساله"  ,
                        date: DateTime.now().hour,
                      ),
                    ],
                  ),
                );
              }
            ),

            LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    padding: EdgeInsets.symmetric(
                        vertical: 10.sp
                    ),
                    child: Column(
                      children: [
                        SendedMessage(
                          message: "اهلا ."  ,
                          date: DateTime.now().hour,
                        ),
                        ReceivedMessage(
                          message: "هنا يكتب نص الرساله , هنا يكتب نص الرساله , هنا يكتب نص الرساله"  ,
                          date: DateTime.now().hour,
                        ),
                      ],
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
