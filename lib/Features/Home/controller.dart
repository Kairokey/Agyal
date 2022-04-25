
import 'package:agyal/Features/Home/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../BookView/books_screen.dart';
import '../ChatView/chat_view.dart';
import '../CoursesView/courses_screen.dart';
import '../MoreView/more_view.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(ChangeBottomNavStateLoading());
   static HomeCubit get(context)=> BlocProvider.of(context);

   int currentIndex = 2;
   List<Widget> bottomScreens = const [
     Center(child: Text( "Home" )),
     ChatScreen(),
     CoursesScreen(),
     BooksScreen(),
     MoreScreen(),
   ];
   void changeBottom(int index){
     currentIndex = index;
     emit(ChangeBottomNavState());
   }
}