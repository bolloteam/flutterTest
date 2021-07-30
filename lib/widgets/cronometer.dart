import 'package:firstapp/widgets/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'dart:async';

class Cronometer extends StatefulWidget {
 final double initTime, fontSize;

 const Cronometer({Key? key, this.initTime = 0, this.fontSize = 30}) : super(key: key);

  @override
   CronometerState createState() =>  CronometerState();
}

class CronometerState extends State <Cronometer> with AfterLayoutMixin{
  double _time = 0;
  Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) { });

  @override
  void initState() { 
    super.initState();
    print("InitState");
    _time = widget.initTime; //initialitate from a widget parameter
  }

  void _start(){
  _timer = Timer.periodic(Duration(seconds: 1), (Timer _) {
      //print("timer");
      setState(() {
        _time += 1;
      });
    });
  }

  void _stop(){
    _timer.cancel();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget (Cronometer oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("old FontSize: $oldWidget.fontSize");
    print("new FontSize: $widget.fontSize");
    
  }

  @override
  void afterFirstLayout(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context){
      return AlertDialog(
        title: Text("AfterFirstLayout"),
      );
    });
  }

  @override
  void dispose() {
    _stop();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
          Text(_time.toString(), 
          style: TextStyle(fontSize: widget.fontSize),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.play_arrow), size: 55), 
                onPressed: _start
              ),
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.stop), size: 55), 
                onPressed: _stop
                ),
            ],
          ),
        ],
      ),
    );
  }
}