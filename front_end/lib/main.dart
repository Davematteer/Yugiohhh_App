import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Layout()
  ));
}

class Layout extends StatelessWidget{
  const Layout({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      body: Row(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            ),
          child: ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child: Image.asset('front_end/lib/images/102 Cool iPhone Wallpapers & Aesthetic Backgrounds.jpg',
            fit: BoxFit.cover,),
          ),
          ),
        Column(),
      ],)
    );
  }
}