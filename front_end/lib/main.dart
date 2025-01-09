import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


void main(){
  runApp(const MyApp2());
}

class MyApp2 extends StatefulWidget{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _myappState();
}

// ignore: camel_case_types
class _myappState extends State<MyApp2>{

  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Fetchign data nigga',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Scaffold(
              appBar: AppBar(
                title: const Text('Still fetching this bitch'),
              ),
              body: Center(
                child: FutureBuilder(
                  future: futureAlbum, 
                  builder: (context,snapshot){
                    if (snapshot.hasData){
                      return Text(snapshot.data!.title);
                    }
                    else if (snapshot.hasError){
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  },
                  ),
              ),
      )
    );
  }
}



// Section for fetching data from the internet 

Future<Album> fetchAlbum() async{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200){
    return Album.toJson(jsonDecode(response.body) as Map<String,dynamic>);
  }
  else{
    throw const FormatException("Yo nigga we've got a connection problem");
  }
}



class Album{
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.toJson(Map<String, dynamic> json){
    return switch(json){
      {'userId': int userId, 'id': int id, 'title': String title} => Album(userId: userId, id: id, title: title),
      _ => throw const FormatException('Nigga wrong format')
    };
  }
}