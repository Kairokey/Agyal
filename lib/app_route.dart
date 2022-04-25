import 'package:agyal/Features/Home/home.dart';
import 'package:agyal/Features/Sign_in/ChangePasswordScreen.dart';
import 'package:agyal/Features/Sign_in/ResetByPhone.dart';
import 'package:agyal/Features/Sign_in/SignIn_Screen.dart';
import 'package:agyal/Features/Sign_in/otpScreen.dart';
import 'package:agyal/main.dart';
import 'package:flutter/material.dart';
import 'Core/routes.dart';

class AppRoute{
  static Route onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.homePath:
        return navigateTo(const Home());
      case Routes.signInPath:
        return navigateTo( SignInScreen());
      case Routes.resetPhonePath:
        return navigateTo( PhoneScreen());
      case Routes.otpScreenPath:
        return navigateTo( OtpScreen());
      case Routes.changePasswordScreenPath:
        return navigateTo(  ChangePasswordScreen());
      default:
        return navigateTo(const AgyalApp());
    }
  }
  static navigateTo(destination){
    return MaterialPageRoute(builder: (context) => destination);
  }
}