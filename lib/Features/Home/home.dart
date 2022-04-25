import 'package:agyal/Features/Home/states.dart';
import 'package:agyal/Features/Home/units/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../Core/colors_manager.dart';
import '../../Core/image_manager.dart';
import '../../Widgets/customer_scaffold.dart';
import 'controller.dart';
part "units/bottom_bar.dart";

class Home extends StatefulWidget {
  static String id = "Home";
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return CustomerScaffold(
      bottomNavigationBar: _BottomBar(),
      body: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          return HomeCubit.get(context)
              .bottomScreens[HomeCubit.get(context).currentIndex];
        }
      )
    );
  }
}
