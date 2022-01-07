// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class PaginaHome extends StatelessWidget{

  void onPressed(String saludo){
    print(saludo + " 😀😀😀");
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Container(
          color: Colors.red.shade100,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                //this.onPressed se puede poner si no tiene  parametro
                // ()=> this.onPressed("wenas") una lamda function, tambien funciona
                onPressed: (){
                  onPressed("wenas");
                },

                
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade300)
                ),
                child: Icon(Icons.calendar_today_outlined, color: Colors.white),
                /*
                child: Text(
                  "Hola123",
                  style: TextStyle(color: Colors.white),
                )*/
              ),
              IconButton(
                onPressed: () =>onPressed("wenas icono"), 
                icon: Icon(Icons.home)
              ),
              CupertinoButton(
                child: Text("Cupe"), 
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                onPressed: ()=>onPressed("wenas cupertino")
              ),
              CupertinoButton(
                child: Icon(CupertinoIcons.home), 
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                onPressed: ()=>onPressed("wenas cupertino")
              )


            ],
          ),
        ),
      )
    );
  }
  
}