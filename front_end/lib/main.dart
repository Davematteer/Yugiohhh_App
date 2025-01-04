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
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Bruh',textDirection: TextDirection.ltr,),
          backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
          shadowColor: Colors.red,
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',)
          ),
        body:const MyBox(word: Text('Yolo'))),
  ));
}