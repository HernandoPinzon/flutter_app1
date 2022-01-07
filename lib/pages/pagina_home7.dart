// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class PaginaHome extends StatelessWidget{

  void onPressed(String saludo){
    print(saludo + " 😀😀😀");
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Sttings"
          ),
        ],
      ),
      
    );
  }
  
}