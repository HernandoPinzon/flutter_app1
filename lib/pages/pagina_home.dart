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
      body: Center(
        child: Text("Hola Mundo"),
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