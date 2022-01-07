
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
        children: [
          MyButtonNavigationBarItem(
            iconData: Ionicons.home_outline, 
            isActive: currentTab == 0,
            onPressed: (){
              currentTab=0;
            },),
          MyButtonNavigationBarItem(
            iconData: Ionicons.heart_outline, 
            isActive: currentTab==1,
            onPressed: (){
              currentTab=1;
              setState(() {
                
              });
            }
            ),
          MyButtonNavigationBarItem(
            iconData: Ionicons.reader_outline, 
            isActive: currentTab==2,
            onPressed: (){
              currentTab=2;
              setState(() {
                
              });
            }
            ),
          MyButtonNavigationBarItem(
            iconData: Ionicons.bag_handle_outline, 
            isActive: currentTab==3,
            onPressed: (){
              currentTab=3;
              setState(() {
                
              });
            }
            ),
          MyButtonNavigationBarItem(
            iconData: Ionicons.person_outline, 
            isActive: currentTab==4,
            onPressed: (){
              currentTab=4;
              setState(() {
                
              });
            }
            ),
          
        ],
      )
    );
  }
}