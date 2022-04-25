import 'package:agyal/Features/Home/controller.dart';
import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'Core/BlockObserver.dart';
import 'Features/SplashScreen/splash_screen.dart';
import 'app_route.dart';
void main() async{
  BlocOverrides.runZoned(() {
    runApp(
        DevicePreview(
          enabled: false,
            builder: (_) => MultiProvider(
              providers: [
                BlocProvider (create: (_) => HomeCubit()),
              ],
                child: const AgyalApp()
            )
        )
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
          return const MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            onGenerateRoute : AppRoute.onGenerateRoute,
            home: SplashScreen(),
          );
        }
    );
  }
}
