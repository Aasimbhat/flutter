import 'package:flutter/material.dart'; 

class homePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
       final int days=30;
     final String name="Asim";
    return Scaffold( //it is a widget component of matrail
      appBar: AppBar(
        title: Text("Catalog App"),
      ), //head
        body: Center(
          child: Container(
            child: Text("welcome to $days days of flutter with $name"),
          ),
        ),
        drawer: Drawer(),
        
      );
  }
}