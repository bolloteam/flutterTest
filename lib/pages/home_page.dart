import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          child: 
          Text("HOLA papu"),
          //alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}