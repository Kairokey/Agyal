import 'package:agyal/main.dart';
import 'package:flutter/material.dart';

class AppRoute{
  static Route onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      default:
        return navigateTo(const AgyalApp());
    }
  }
  static navigateTo(destination){
    return MaterialPageRoute(builder: (context) => destination);
  }
}