import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:front_end/main.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => myappState();
}

class myappState extends State<MyApp>{

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Scaffold(

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