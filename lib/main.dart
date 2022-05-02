// ignore: unused_import
//import 'package:blingo/ConterScrren.dart';
//import 'package:blingo/modules/Pag3.dart';
import 'package:blingo/modules/bmi/Page4.dart';
import 'package:flutter/material.dart';
 //import 'package:blingo/Home_Page.dart';

//import 'models/bmi/Page4.dart';

void main() {
  runApp(const MyApp());
}
class  MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Page4(),
    );
  }
}
