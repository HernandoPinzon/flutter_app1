


import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyCounter extends StatefulWidget{
  
  @override
  State createState(){ //puede ser lamda => MyCounterState();
    return MycounterState();
  }
}

class MycounterState extends State{

  int counter = 0;

  void add(){
    counter+=1;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("La colum de stteful:"),
        Text("$counter",
          style: TextStyle(fontSize: 30),
          
        ),
        FloatingActionButton(
          onPressed: add,
          child: Icon(Ionicons.add_outline),
        )
      ],
    );
  }
  
}