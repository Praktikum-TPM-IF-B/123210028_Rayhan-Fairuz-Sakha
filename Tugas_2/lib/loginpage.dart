import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ) ,

      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("LOGIN",style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white), ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white) ,
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.white) ,
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.white)
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(onPressed: (){},
                  child: Text("Login", style: TextStyle(color: Colors.teal),),
              )
            ],
          ),
        )
      ),
      backgroundColor: Colors.tealAccent,
    );
  }
}
