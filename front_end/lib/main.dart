import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Layout()
  ));
}

class Layout extends StatelessWidget{
  const Layout({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 600,
          
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(246, 255, 255, 255),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 158, 158, 158),
                      spreadRadius: 4,
                      blurRadius: 5,
                      )
            ],
          ),
          child: Row(children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                ),
              child: ClipRRect(
                
                borderRadius:BorderRadius.circular(10),
                child: Image.asset('lib/images/102 Cool iPhone Wallpapers & Aesthetic Backgrounds.jpg',
                fit: BoxFit.cover,),
              ),
              ),
             Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                       icon: const Icon(Icons.star),
                       tooltip: 'Like',),
                       Text('126'),

                    ],),
                ),
                Container(padding:const EdgeInsets.all(10),),
              ],
            ),
          ],),
        ),
      )
    );
  }
}