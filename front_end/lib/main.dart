import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(
    const MyApp()
    );
}

// // Section for testing futures
// Future<http.Response> fetchAlbum(){
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// } 

// // creation of object to map json 
// class Album{
//   final int userId;
//   final int id;
//   final String title;

//   const Album({
//     required this.userId,
//     required this.id,
//     required this.title}
//     );
  
//   factory Album.fromJson(Map<String,dynamic> json){
//     return switch(json){
//       {
//         'userId': int userId,
//         'id': int id,
//         'title': String title,
//       } =>
//       Album(
//         userId: userId, 
//         id: id, 
//         title: title),
//         _ => throw const FormatException('Failed to load Album')
//     };
//   }
// }



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



Future<http.Response> get = http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

