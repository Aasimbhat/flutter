import 'package:flutter/material.dart'; 

class homePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) { //build is afunction that we are overidding
       //buildcontext tells us the location of a particular item in a widget tree
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
  // bringvegetables({@required bool ,int rupees=100}){ //this is called a method which tells us what to do{}these used for optional data

  // }
}