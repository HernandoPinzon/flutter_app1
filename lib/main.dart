import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/grid_page.dart';
//import 'package:flutter_app2/pages/pagina_home11.dart';

void main(){
  runApp(MiAplic());
}

class MiAplic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridPage()
    );
  }
}
