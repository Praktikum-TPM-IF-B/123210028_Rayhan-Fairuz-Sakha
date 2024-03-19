import 'package:flutter/material.dart';

class profile1 extends StatelessWidget {
  const profile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Anda!"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Text("Nama : ",textAlign: TextAlign.start,),
            SizedBox(height: 25,),
            Text("Username :",textAlign: TextAlign.start),
            SizedBox(height: 25,),
            Text("NIM :",textAlign: TextAlign.start),
            SizedBox(height: 25,),
            Text("IPK :",textAlign: TextAlign.start),
            SizedBox(height: 25,),
            Text("Tahun Masuk :",textAlign: TextAlign.start),
            SizedBox(height: 25,),
            Text("SKS Total:",textAlign: TextAlign.start),
            SizedBox(height: 25,),
            Text("Semester :",textAlign: TextAlign.start),



          ],
        ),
      ),
    );
  }
}
