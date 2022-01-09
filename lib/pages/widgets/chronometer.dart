// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chronometer extends StatefulWidget {
  Chronometer({Key? key}) : super(key: key);

  @override
  _ChronometerState createState() => _ChronometerState();
}

class _ChronometerState extends State<Chronometer> {

  int miliseconds = 0;
  bool running = false;

  @override
  void dispose() {
    // TODO: implement dispose
    print("me disposearon");
    running=false;
    super.dispose();
  }

  void onPressed(){
    running = !running;
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      miliseconds += 100;
      running?setState(() {}):timer.cancel();
    });
    
    
  }

  String formatTime(){

    final Duration duration = Duration(milliseconds: this.miliseconds);

    String twoNumbers(int value){
      return value>=10? "$value":"0$value";
    }


    String hours = twoNumbers(duration.inHours.remainder(24));
    String minutes = twoNumbers(duration.inMinutes.remainder(60));
    String seconds = twoNumbers(duration.inSeconds.remainder(60));
    String miliseconds = twoNumbers(duration.inMilliseconds.remainder(1000));
    String textoListo = "$hours:$minutes:$seconds:$miliseconds";
    return textoListo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            this.formatTime(),
            style: TextStyle(
              fontSize: 20
            ),
          ),
          CupertinoButton.filled(
            child: Text(running?"Stop":"Start"), 
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}