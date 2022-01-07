import 'package:flutter/material.dart';


class PaginaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Container(
          color: Colors.blueAccent.shade100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                child: Row( 
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 70, 
                      height: 50, 
                      color: Colors.red,
                    ),
                    Container(
                      width: 40, 
                      height: 70, 
                      color: Colors.green,
                    ),
                    Container(
                      width: 40, 
                      height: 50, 
                      color: Colors.yellow,
                    ),

                  ],
                ),
              ),
              Spacer(),

              Expanded(
                child: Container(
                  color: Colors.red.shade50,
                  child: Row( 
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          width: 50, 
                          height: 50, 
                          color: Colors.red,
                        ),
                      ),
                      
                      Container(
                        width: 50, 
                        height: 50, 
                        color: Colors.green,
                      ),
                      Container(
                        width: 50, 
                        height: 50, 
                        color: Colors.yellow,
                      ),
                      Spacer(),
              
                      Expanded(
                        child: Container(
                          width: 50, 
                          height: 50, 
                          color: Colors.blue,
                        ),
                      ),
              
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.red.shade50,
                  child: Row( 
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 50, 
                          height: 50, 
                          color: Colors.red,
                        ),
                      ),
                      
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 50, 
                          height: 50, 
                          color: Colors.green,
                        ),
                      ),
              
                      Expanded(
                        flex: 6,
                        child: Container(
                          width: 50, 
                          height: 50, 
                          color: Colors.blue,
                        ),
                      ),
              
                    ],
                  ),
                ),
              ),
            ],

          ),
        ),
      ),

      
    );
  }
  
}