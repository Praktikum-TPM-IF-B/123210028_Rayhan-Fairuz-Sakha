import 'package:flutter/material.dart';

class details extends StatelessWidget {
  // const detail({super.key});
  details({required this.amiibo});
  final dynamic amiibo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(amiibo['name']),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                amiibo['image'],
                height: 200,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Name: ${amiibo['name']}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Amiibo Series: ${amiibo['amiiboSeries']}',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 12),
            Text(
              'Game Series: ${amiibo['gameSeries']}',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 12),
            Text(
              'Type: ${amiibo['type']}',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}