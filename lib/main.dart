// ignore: unused_import
//import 'package:blingo/modules/Pag3.dart';
//import 'package:blingo/modules/bmi/Page4.dart';
// import 'package:blingo/modules/bmi/Page4.dart';
//import 'package:blingo/modules/coutter/CinterScrren.dart';
//import 'package:blingo/modules/login/Pag2.dart';
import 'package:blingo/modules/bmi/Page4.dart';
import 'package:flutter/material.dart';

// import 'modules/ConterScrren.dart';
 //import 'package:blingo/Home_Page.dart';

void main() {
  runApp(const MyApp());
}
class  MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page4(),
    );
  }
}
