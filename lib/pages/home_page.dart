import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: 
          CircleContainer(
            child: 
            SvgPicture.asset(
              'assets/icons/sun.svg', 
              width: 40, 
              height: 40, 
            ),
            /*
            Icon(
              //CupertinoIcons.add,
              Icons.phone,

              size: 50,
              color: Colors.blue
              ),*/
            /*Text(
              "sape",
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),*/
            width:100,
            height: 100,
        ),
      ),
    );
  }
}