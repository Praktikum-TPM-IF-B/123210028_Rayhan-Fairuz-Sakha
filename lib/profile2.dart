import 'package:flutter/material.dart';

class profile2 extends StatelessWidget {
  const profile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Teman"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
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
