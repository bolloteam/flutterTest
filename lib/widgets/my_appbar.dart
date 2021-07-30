import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Color(0xffeeeeee),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.person), 
            onPressed: (){}),
          Text("AppBar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,)),
          CupertinoButton(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.camera), 
            onPressed: (){}),
          CupertinoButton(
            padding: EdgeInsets.all(0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.message),
                ),
                Positioned(
                  right: 12,
                  top: 12,
                  child:Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              ],
            ), 
            onPressed: (){}),
        ],
      ),
    );
  }
}