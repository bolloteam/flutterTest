import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget{

  final Widget child;
  final double width, height;


  CircleContainer({required this.child,required this.width,required this.height}):
  assert(width >= 50),
  assert(height >= 50);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: width,
          height: height,
          child: Center(
            child: this.child
            ),
          decoration: BoxDecoration(
            color: Colors.grey,
            //borderRadius: BorderRadius.circular(150),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10),
            ]),
        );
  }

}