import 'package:agyal/Features/Home/home.dart';
import 'package:agyal/main.dart';
import 'package:flutter/material.dart';
import 'Core/routes.dart';

class AppRoute{
  static Route onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.homePath:
        return navigateTo(const Home());
      default:
        return navigateTo(const AgyalApp());
    }
  }
  static navigateTo(destination){
    return MaterialPageRoute(builder: (context) => destination);
  }
}