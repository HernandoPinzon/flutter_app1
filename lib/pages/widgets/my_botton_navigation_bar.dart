
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/widgets/my_botton_navigation_bar_item.dart';
import 'package:ionicons/ionicons.dart';

class MyBottonNavigationBar extends StatefulWidget {
  @override
  State<MyBottonNavigationBar> createState() => _MyBottonNavigationBarState();
}

class _MyBottonNavigationBarState extends State<MyBottonNavigationBar> {
  
  int currentTab=0;
  final List<IconData> items = [
    Ionicons.home_outline,
    Ionicons.heart_outline,
    Ionicons.reader_outline,
    Ionicons.bag_handle_outline,
    Ionicons.person_outline
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 2
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: List.generate(items.length, (index){
          final IconData iconData = items[index];
          return MyButtonNavigationBarItem(
            iconData: iconData, 
            isActive: index==currentTab,
            onPressed: (){
              currentTab=index;
              setState(() {
                
              });
            },
          );
        }
        ),
      )
    );
  }
}