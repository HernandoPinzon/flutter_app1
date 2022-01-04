import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';


class PaginaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt_outlined,
              size: 50,
              color: Colors.redAccent,
              ),
              Icon(
              CupertinoIcons.camera_on_rectangle,
              size: 50,
              color: Colors.blue,
              ),
              Icon(
              Ionicons.camera_outline,
              size: 50,
              color: Colors.blue,
              ),
          ],
        ),
        )
    );
  }
  
}