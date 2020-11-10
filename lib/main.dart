import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Development/Projects/Flutter/loja_virtual/lib/screens/base/base_screen.dart';



void main() async {
  runApp(MyApp());

   Firestore.instance.collection('pedidos').snapshots().listen((snapshot) {
     for(DocumentSnapshot document in snapshot.documents){
       print(document.data);
     }
   });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Virtual',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 4, 125, 141),
        scaffoldBackgroundColor: const Color.fromARGB(255, 4, 125, 141),
        appBarTheme: const AppBarTheme(
          elevation: 0
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
