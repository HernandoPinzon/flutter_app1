


import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyCounter extends StatefulWidget{
  final int initialValue;
  final Color color;

  const MyCounter({
    Key? key, 
    this.initialValue = 0, 
    this.color= Colors.white,
  }) : super(key: key);
  @override
  State<MyCounter> createState(){ //puede ser lamda => MyCounterState();
    return MycounterState();
  }
}

class MycounterState extends State<MyCounter>{

  int counter = 0;


  @override
  void didUpdateWidget(covariant MyCounter oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print(oldWidget.color);
    print(widget.color);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter = widget.initialValue;
  }

  void add(){
    counter+=1;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: widget.color,
      child: Column(
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
      ),
    );
  }
  
}