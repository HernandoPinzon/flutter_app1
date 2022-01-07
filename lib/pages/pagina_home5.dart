// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class PaginaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Stack(
          children: [
            Icon(
              Icons.notifications,
              size: 60,
            ),
            Positioned(
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent
                ),
              ),
            )
          ],
        ),
      )
    );
  }
  
}