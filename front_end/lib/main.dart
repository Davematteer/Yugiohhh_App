import 'package:flutter/material.dart';

void main(){
  runApp(const MainPage());
}

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CounterPage()
    );
  }
}


class CounterPage extends StatefulWidget{
  const CounterPage({super.key});

  @override 
  State<CounterPage> createState() => _CounterState();
}
class _CounterState extends State<CounterPage>{

  int _count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: ElevatedButton(
            onPressed: (){},
            child: Text('Increment: $_count') )
        ),
      ),
    );
  }


}