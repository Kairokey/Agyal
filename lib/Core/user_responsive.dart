import 'package:flutter/cupertino.dart';

class SetResponsive{
  static width(context) => MediaQuery.of(context).size.width;
  static height(context) => MediaQuery.of(context).size.height;

  static get({
    required context ,
    required  mobile ,
    required tablet}
      ){
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.width;
    if(w > 600){
      return tablet;
    }else{
      return mobile;
    }
  }
}