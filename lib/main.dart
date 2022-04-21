import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'Core/BlockObserver.dart';
import 'app_route.dart';
void main() async{
  BlocOverrides.runZoned(() {
    runApp(
        DevicePreview(builder: (_) => const AgyalApp())
    );
  },
  blocObserver: MyBlocObserver(),
  );
}

class AgyalApp extends StatefulWidget {
  const AgyalApp({Key? key}) : super(key: key);
  @override
  _AgyalAppState createState() => _AgyalAppState();
}
class _AgyalAppState extends State<AgyalApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            onGenerateRoute : AppRoute.onGenerateRoute,
            home: Scaffold(
              body: Center(
                child: Text(
                  "Agyal",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
