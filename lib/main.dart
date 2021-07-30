import 'package:firstapp/pages/image_page.dart';
import 'package:firstapp/pages/splash_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      home: SplashPage(),
      //home: HomePage(),
      routes: {
        'home': (BuildContext context) => HomePage(),
        'images': (BuildContext context) => ImagePage()
        },
      debugShowCheckedModeBanner: false,
    );
  }
}