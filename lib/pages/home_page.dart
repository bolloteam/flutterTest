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
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,//default value
            mainAxisSize: MainAxisSize.max,//default value
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Bienvenido"),
              Container(
                height: 1,
                width: 100,
                //margin: EdgeInsets.all(5),
                //margin: EdgeInsets.only(top: 5, bottom: 5),
                margin: EdgeInsets.symmetric(vertical: 5),
                color: Color(0xffaaaaaa),
              ),
              Text("Manuel Rivas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleContainer(child: Icon(Icons.add), width: 55, height: 55),
                  //Container(width: 20,),
                  SizedBox(width: 5,),
                  CircleContainer(child: Icon(Icons.remove), width: 55, height: 55),
                  // Container(width: 80, height: 80, color: Colors.blueAccent,),
                  // Container(width: 120, height: 120, color: Colors.blueAccent,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}