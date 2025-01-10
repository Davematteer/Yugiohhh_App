
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/web_socket_channel.dart';

void main() => runApp(const MyApp());


class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _appState();

}

// ignore: camel_case_types
class _appState extends State<MyApp>{

  @override 
  Widget build(BuildContext context){
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: StreamBuilder(
            stream: channel.stream, 
            builder: (context, snapshot){
              return Text(snapshot.hasData ? '${snapshot.data}' : '');
            }),
        ),
      )
    );
  }
}

