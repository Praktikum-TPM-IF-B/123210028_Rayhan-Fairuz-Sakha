import 'package:flutter/material.dart';

import 'characterlist.dart';
import 'gameslist.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                // Navigate to Daftar Anggota
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AmiiboGame()),
                );
              },
              child: const Text('Daftar Game'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigate to Daftar Anggota
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AmiiboChara()),
                );
              },
              child: const Text('Daftar Character'),

            ),

          ],
        ),
      ),
    );
  }
}