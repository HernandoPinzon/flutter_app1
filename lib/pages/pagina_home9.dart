// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/pages/widgets/My_Counter.dart';
import 'package:ionicons/ionicons.dart';
import './widgets/my_botton_navigation_bar.dart';


class PaginaHome extends StatelessWidget{

  void onPressed(String saludo){
    print(saludo + " 😀😀😀");
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      bottomNavigationBar: MyBottonNavigationBar(),
      body: Center(
        child: MyCounter(),
      ),
      
    );
  }
  
}