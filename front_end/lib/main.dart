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
          height: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(),
            child: Column(
              children: [
                Text('Count: $_count'),
                ElevatedButton(
                  onPressed: ()=> setState(()=>_count++),
                  child: Text('Increment') ),
                ElevatedButton(
                  onPressed: ()=> setState(() => _count--), 
                  child: Text('Decrement'))
              ],
            ),
          )
        ),
      ),
    );
  }


}