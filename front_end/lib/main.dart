import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter()
        )
      )
    )
  );
}


class Counter extends StatefulWidget{
  const Counter({super.key});

  @override 
  State<Counter> createState() => _counterState();

}

class _counterState extends State<Counter>{

  int _count = 0;

  void _increment(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment')),
          const SizedBox(width: 16,),
          Text('Count: $_count')
      ],
    );
  }
}