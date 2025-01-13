import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:front_end/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => myappState();

}
//ignore: camel_case_types
class myappState extends State<MyApp>{

    FirebaseFirestore db = FirebaseFirestore.instance;
    int _number = 1;
    void _increment() => setState(()=> _number++);

    void _somefuncbi(){
      final user = {
        "firstname" : "Fabrice",
        "lastname" : "SUMSA",
        "born" : 0 
      };

      db.collection('users').add(user);
    }



    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: _increment, 
              child: Text('UwU: $_number')),
          ),
        )

      );
    }
}