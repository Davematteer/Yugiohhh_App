import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(
    const MyApp()
    );
}

// Section for testing futures
Future<Album> fetchAlbum() async{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200){
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }
  else{
    throw Exception('Failed to load album');
  }

}


// creation of object to map json 
class Album{
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title}
    );
  
  factory Album.fromJson(Map<String,dynamic> json){
    return switch(json){
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      } =>
      Album(
        userId: userId, 
        id: id, 
        title: title),
        _ => throw const FormatException('Failed to load Album')
    };
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Text(''),
          ),
        )
      )
    );
  }
}



// here we make a response object for the data source
Future<http.Response> myResponse = http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

// convertign the response json into a dart object 

class myresponseObject{
  final int num;
  final int anothernum;
  final String word;

  const myresponseObject({
    required this.num,
    required this.anothernum,
    required this.word
  });

  // this is a factory constructor design pattern where we create an object from a "method"
  factory myresponseObject.fromJson(Map<String, dynamic> json){
    return switch(json){
      {'num': int num, 'anothernum': int anothernum, 'word': String word} => myresponseObject(num: num, anothernum: anothernum, word: word),
      _ => throw const FormatException('Nah fam')
    };
  }
}


