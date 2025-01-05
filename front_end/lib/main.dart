import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyApp()
      )
    )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>print('yo'),
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(color: Colors.blue, 
                                  borderRadius: BorderRadius.circular(10)),
        ),
      )

    );
  }
}