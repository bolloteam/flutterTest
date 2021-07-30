import 'package:firstapp/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/cronometer.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isEnabled = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomMenu(items: [
        BottomMenuItem(icon: Icons.home, label: "Home"),
        BottomMenuItem(icon: Icons.history, label: "Historial"),
        BottomMenuItem(icon: Icons.person, label: "Profile"),
      ],),
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
              Avatar(),
              SizedBox(height:20,),
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
              _isEnabled==true
                ? Cronometer(initTime: 20, fontSize: _fontSize,)
                : Container(),
                SizedBox(height:15),
                CupertinoButton(child: Text("enabled: $_isEnabled"),
                color: Colors.blueAccent,
                onPressed: (){
                  setState(() {
                    _isEnabled = !_isEnabled;
                  });
                }),
                SizedBox(height:15),
                CupertinoButton(child: Text("new FontSize"),
                color: Colors.greenAccent,
                onPressed: (){
                  setState(() {
                    _fontSize++;
                  });
                })
              /*
              TextButton(
                child: Text("Upload"),
                onPressed: () {  }, 
                ),
              CupertinoButton(
                child: Text("Upload"),
                color: Colors.blue,
                onPressed: () {  }, 
                ),*/
              /*
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleContainer(child: Icon(Icons.add), size: 55),
                  //Container(width: 20,),
                  SizedBox(width: 5,),
                  CircleContainer(child: Icon(Icons.remove), size: 55),
                  // Container(width: 80, height: 80, color: Colors.blueAccent,),
                  // Container(width: 120, height: 120, color: Colors.blueAccent,),
                ],
              )*/
            ],
          ),
        ),
      ),
    );
  }
}