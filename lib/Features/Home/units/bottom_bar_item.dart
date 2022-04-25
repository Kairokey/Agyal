import 'package:agyal/Features/Home/controller.dart';
import 'package:agyal/Features/Home/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

getBottomNavigationBar(String path , int selected , context){
  return BottomNavigationBarItem(
      icon: BlocConsumer<HomeCubit , HomeStates>(
        listener: (context , state) {  },
        builder: (context ,state ){
          return SvgPicture.asset(
            path,
            color: HomeCubit.get(context).currentIndex != selected ? Colors.grey : null,
          );
        },
      ),
      label: ""
  );
}