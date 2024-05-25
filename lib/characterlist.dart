import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detail.dart';
import 'package:hive_flutter/adapters.dart';

class AmiiboChara extends StatefulWidget {
  @override
  _AmiiboCharaState createState() => _AmiiboCharaState();
}

class _AmiiboCharaState extends State<AmiiboChara> {
  List<dynamic> charas = [];
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchAmiibos();
  }

  Future<void> fetchAmiibos({String? name}) async {
    final url = name != null
        ? 'https://www.amiiboapi.com/api/amiibo/?name=$name'
        : 'https://www.amiiboapi.com/api/amiibo/';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      setState(() {
        charas = json.decode(response.body)['amiibo'];
      });
    } else {
      throw Exception('Failed to load amiibos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character List'),
        backgroundColor: Colors.red,
      ),
      body:ValueListenableBuilder(
        valueListenable: Hive.box('favorites').listenable() ,
        builder: (context, box, child){
          return ListView.builder(
            itemCount: charas.length,
            itemBuilder: (context, index) {
              final chara = charas[index];
              final isFav = box.get(index) !=null;
              return ListTile(
                leading: Image.network(chara['image']),
                title: Text(chara['name']),
                subtitle: Text(chara['amiiboSeries']),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => details(amiibo: chara),
                      ),
                  );
                },
                trailing: IconButton(
                  onPressed: () async {
                    if(isFav){
                      await box.delete(index);
                    } else {
                      await box.put(index, chara);
                    }
                  },
                  icon: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border),
                  color: Colors.red,),
              );
            },
          );
        },
      )
    );
  }
}