import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{

  final Widget word;

  const MyBox({required this.word, super.key});

  Widget build(BuildContext context){
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.yellow[800],
            boxShadow:const [BoxShadow(
                          color:Colors.blue,
                          blurRadius: 10,
                          spreadRadius: 2)
            ] 
            ),

      ),
    );
  }
}

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:MyBox(word: Text('Yolo'))),
  ));
}