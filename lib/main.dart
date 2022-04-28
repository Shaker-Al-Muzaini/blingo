import 'package:flutter/material.dart';
 import 'package:blingo/Home_Page.dart';

//import 'Pag2.dart';
//import 'Pag3.dart';

void main() {
  runApp(const MyApp());
}
class  MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );

  }
}
