import 'package:flutter/material.dart';
import 'package:flutter_toturail/utlis/routes.dart';

class LogInPage extends StatefulWidget {
  
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  
  bool changeButton=false;
  
  //class is a blueprint --class generates object
  
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                                                              
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: " Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        labelText: "Password",
                      ),
                    ),
                      SizedBox(
                height: 40.0,
              ),

              InkWell(
                onTap: ()async {
                  setState(() {
                    
                    changeButton=true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width:changeButton ? 50: 150,
                  height: 50,
                  // color: Colors.deepPurple,
                  alignment: Alignment.center,
                  child: changeButton?Icon(Icons.done,color: Colors.white,) : Text("Login",
                  style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton
                    // ?BoxShape.circle
                    // :BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton ?20: 10)
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   style: TextButton.styleFrom(minimumSize: Size(150,40 )),
              //    child: Text("login")
                 
              //    )
                  ],
                  
                ),
              )
            ],
          ),
        ));
  }
}
