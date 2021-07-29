import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget{

  final Widget child;
  final double size;


  CircleContainer({required this.child,required this.size,}):
  assert(size >= 20);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: size,
          height: size,
          child: Center(
            child: this.child
            ),
          decoration: BoxDecoration(
            color: Color(0xfff0f0f0),
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