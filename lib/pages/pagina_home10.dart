// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/pages/widgets/chronometer.dart';
import 'package:ionicons/ionicons.dart';
import './widgets/my_botton_navigation_bar.dart';
import 'dart:math';


class PaginaHome extends StatefulWidget{


  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {

  Color color = Colors.white;
  List<Color> colors = [Colors.red,Colors.black,Colors.blue];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.color = color;

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      bottomNavigationBar: MyBottonNavigationBar(),
      body: Center(
        child: Chronometer(),
      )
      
    );
  }
}