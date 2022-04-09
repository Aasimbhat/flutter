import 'package:flutter/material.dart';
class LogInPage extends StatelessWidget { //class is a blueprint --class generates objec
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Page",
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),),
        
        ),
    );
  }
}