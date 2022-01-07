


// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyButtonNavigationBarItem extends StatelessWidget {
  const MyButtonNavigationBarItem({
    Key? key, 
    required this.iconData, 
    this.isActive = false,
    required this.onPressed,
    }) : super(key: key);

  final IconData iconData;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
              onPressed: (){
                onPressed();
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    iconData, 
                    size: 30,
                    color: isActive? Colors.black : Colors.blueAccent,
                  ),
                  
                  isActive? Container(
                    margin: EdgeInsets.only(top: 4),
                    width: 12,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black
                    ),
                  ):Container()
                ],
              )
            ),
      );
  }
}