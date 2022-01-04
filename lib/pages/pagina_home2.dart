import 'package:flutter/material.dart';


class PaginaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Row( 
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 70, 
                height: 50, 
                color: Colors.red,
              ),
              Container(
                width: 40, 
                height: 70, 
                color: Colors.green,
              ),
              Container(
                width: 40, 
                height: 50, 
                color: Colors.yellow,
              ),

            ],
          ),
        ),
      ),

      
    );
  }
  
}