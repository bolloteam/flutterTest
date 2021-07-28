import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';

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
            child: Text(
              "sape",
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            width:100,
            height: 100,
        ),
      ),
    );
  }
}