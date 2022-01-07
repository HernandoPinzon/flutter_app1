// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';


class PaginaHome extends StatelessWidget{

  void onPressed(String saludo){
    print(saludo + " 😀😀😀");
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CupertinoButton(
              child: Icon(Ionicons.home_outline),
              onPressed: ()=>onPressed("es un navBar")
            ),
            CupertinoButton(
              onPressed: ()=>onPressed("es in buton de material"),
              child: Icon(Ionicons.heart_outline)
            ),
            CupertinoButton(
              onPressed: ()=>onPressed("es in buton de material"),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Ionicons.reader_outline),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    width: 12,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black
                    ),
                  )
                ],
              )
            ),
            CupertinoButton(
              onPressed: ()=>onPressed("es in buton de material"),
              child: Icon(Ionicons.bag_handle_outline)
            ),
            CupertinoButton(
              onPressed: ()=>onPressed("es in buton de material"),
              child: Icon(Ionicons.person_outline)
            ),

          ],
        ),
      )
      
    );
  }
  
}