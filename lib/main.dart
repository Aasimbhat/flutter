import 'package:flutter/material.dart';
import 'package:flutter_toturail/pages/login_page.dart';
import 'package:flutter_toturail/utlis/routes.dart';


import 'homepage.dart'; //material.dart used to build widget tree

void main(){ //main is a function
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//$ means string interpolation
                                                                      
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: homePage(),
      themeMode:ThemeMode.dark ,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      
      ),
     debugShowCheckedModeBanner: false,
      
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      // initialRoute: "/home", //if we want home page should be first so we use initail route
      routes:{
        "/":(context)=>LogInPage(), // / by default means home route
          MyRoutes.homeRoute:(context)=>homePage(),
        MyRoutes.loginRoute :(context)=>LogInPage()
      } , //first it takes map(which has key and value)first key it takes as string and second it takes function(it has parameter build context)
    );
  } 
}