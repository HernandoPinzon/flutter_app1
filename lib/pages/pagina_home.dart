import 'package:flutter/material.dart';


class PaginaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo de appbar"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ },
        child: Icon(Icons.check),
      ),



      body: Container(
        width: 300,
        height: 100,
        //color: Colors.red.shade100, no se puede junto a decoration
        child:  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed e"),
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 13, right: 30, bottom: 20),
        //symetric usa horizontal y vertical
        margin: EdgeInsets.all(50).copyWith(top: 70), //modifica un elemnto en esta caso el top
        decoration: BoxDecoration(
          color: Colors.red.shade100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomRight: Radius.elliptical(40,15)
            ), //.circular(30) para todas las esquinas .horizontal(...) para izquierda o derecha
          boxShadow: [
            BoxShadow(
              color: Colors.green.shade200,
              blurRadius: 20,
              offset: Offset(10,5),
              spreadRadius: 20

            ),
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(-10,-5),
              spreadRadius: 10

            ),
          ],
          //shape: BoxShape.circle //para hacer containeer 100% circular

        ),
      ),



      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active_rounded), label: "Notificatiuons")


        ],
        ),
        backgroundColor: Colors.red.shade50,
    );
  }
  
}