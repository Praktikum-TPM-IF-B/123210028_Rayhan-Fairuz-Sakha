import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizprak_rayhan_fairuz_sakha_123210028/profile1.dart';
import 'package:quizprak_rayhan_fairuz_sakha_123210028/DummyMahasiswa.dart';
import 'package:quizprak_rayhan_fairuz_sakha_123210028/profile2.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Halo Mahasiswa!"),
          actions: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile1()));
            },
                child: Text("Profile")),
          ]

      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Marwoto"),
            subtitle: Text("insert int nim Marwoto"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile2()));
            },
          );
        },
      ),

    );
  }
}