import 'package:bank_app/screens/home_screen.dart';
import 'package:bank_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        title: 'Nepali Wallet',
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor : 1.0),
              child: widget!);
        },
        theme: ThemeData(
          fontFamily: "Outfit",
          scaffoldBackgroundColor: bgColor,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
