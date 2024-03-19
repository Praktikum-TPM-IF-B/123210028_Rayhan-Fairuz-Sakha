import 'package:flutter/material.dart';
import 'package:quizprak_rayhan_fairuz_sakha_123210028/home.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  final TextEditingController usernameCon = TextEditingController();
  final TextEditingController passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page UPNVYK E-Learning"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("E-Learning\nUPNYK", textAlign: TextAlign.center,
                style:TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              TextField(
                controller: usernameCon,
                decoration: InputDecoration(labelText: "Username"),
              ),
              TextField(
                controller: passwordCon,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(height: 35,),
              ElevatedButton(onPressed:(){
                if(usernameCon.text == 'gacor'&& passwordCon.text =='gacor'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                }
              } , child: Text("Masuk"))
              ],
          ),
        ),
      )
    );
  }
}
