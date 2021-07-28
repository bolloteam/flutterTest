import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Text("Widget\nText", 
        textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green, 
            fontSize: 45, 
            letterSpacing: 2.5,
            fontWeight: FontWeight.w300,
            shadows: [
              Shadow(color: Colors.black,blurRadius: 6, offset: Offset(1,1))
            ],
          ),
        ),
      ),
    );
  }
}