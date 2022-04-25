import 'package:agyal/Core/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:sizer/sizer.dart';

class CustomSign extends StatefulWidget {
  CustomSign({Key? key,this.name,this.hint,this.secure,this.sufix,this.controller,this.onChanging,this.onSaved,this.validator}) : super(key: key);
  String? name;
  String? hint;
  bool? secure;
  bool? sufix;
  var onSaved;
  var onChanging;
  var validator;

  TextEditingController? controller;
  IconData? icons;

  @override
  State<CustomSign> createState() => _CustomSignState();
}

class _CustomSignState extends State<CustomSign> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Directionality(
        textDirection: ui.TextDirection.rtl,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 5.sp,),
              Align(alignment: Alignment.topRight,
                  child: Text(widget.name!,style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
              SizedBox(height: 5.sp,),
              TextFormField(

                controller: widget.controller,
                obscureText: widget.secure!,
                validator: widget.validator!,
                onSaved:widget.onSaved ,
                onChanged:widget.onChanging ,


                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.transparent),

                    borderRadius: BorderRadius.circular(10.sp)
                    ),
                  hintText: widget.hint!,
                  suffixIcon:widget.sufix!?InkWell(
                      onTap: (){
                        setState(() {
                          widget.secure=!widget.secure!;
                        });
                      },
                      child: Icon(Icons.remove_red_eye,color: blueBerry,))
                      :null
                  ,
                ),

              ),
            ],

          ),
        ),
      ),
    );
  }
}
