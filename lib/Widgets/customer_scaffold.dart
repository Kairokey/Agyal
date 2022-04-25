import 'package:agyal/Core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class CustomerScaffold extends StatefulWidget {
  AppBar? appBar ;
  // ignore: prefer_typing_uninitialized_variables
  Widget? bottomNavigationBar;
  Widget? body ;
  GlobalKey<ScaffoldState>? globalKey;
  CustomerScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.globalKey,
  }) : super(key: key);

  @override
  _CustomerScaffoldState createState() => _CustomerScaffoldState();
}

class _CustomerScaffoldState extends State<CustomerScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            key: widget.globalKey,
            appBar: widget.appBar,
            resizeToAvoidBottomInset: false,
            backgroundColor: background,
            bottomNavigationBar: widget.bottomNavigationBar,
            body: widget.body,
          ),
        )
    );
  }
}
