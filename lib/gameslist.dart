import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AmiiboGame extends StatefulWidget {
  @override
  _AmiiboGameState createState() => _AmiiboGameState();
}

class _AmiiboGameState extends State<AmiiboGame> {
  List<dynamic> games = [];
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData({String? name}) async {
    final url = name != null
        ? 'https://www.amiiboapi.com/api/amiibo/?gameseries=value'
        : 'https://www.amiiboapi.com/api/amiibo/';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      setState(() {
        games = json.decode(response.body)['amiibo'];
      });
    } else {
      throw Exception('ERROR LOADING THE API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amiibo Games + Item Type'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [

          Expanded(
            child: games.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];
                return ListTile(
                  leading: Image.network(game['image']),
                  title: Text(game['amiiboSeries']),
                  subtitle: Text(game['type']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}