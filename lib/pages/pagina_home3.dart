import 'package:flutter/material.dart';


class PaginaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: SafeArea(
        top: false,
        child: Container(
          width: 300,
          color: Colors.black26,
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.red, height: 40, width: 80,),
                Container(color: Colors.green, height: 40, width: 40,),
                Container(color: Colors.blue, height: 40, width: 40,),
              ],
            ),
          ),
        ),
      )
    );
  }
  
}