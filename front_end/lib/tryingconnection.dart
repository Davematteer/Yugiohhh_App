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

Future<http.Response> fetchAlbum(){
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}