import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'register.dart';
import 'home.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle (fontSize: 22 , color: Colors.black ), ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text("Login " , style: TextStyle (fontSize: 22 , color: Colors.red ),),
              SizedBox(height: 10,),
              Text("Amiibo" ,  style: TextStyle (fontSize: 52 , color: Colors.red ),),
              SizedBox(height: 100,),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username'
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () async {
                    if((usernameController.text == 'user1' || usernameController.text == 'user2') && passwordController.text == 'password'){
                      final SharedPreferences prefsdata = await SharedPreferences.getInstance();
                      prefsdata.setString('username', usernameController.text);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Home(),)
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Login Gagal'),
                        ),
                      );
                    }
                  },
                  child: Text('Masuk')
              ),
              SizedBox(height: 20,),
              Text("Belum punya akun?"),
              TextButton(onPressed: (){
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => register(),)
                // );
              }, child: Text("Register (non functional)"))

            ],
          ),
        ),
      ),
    );
  }
}
