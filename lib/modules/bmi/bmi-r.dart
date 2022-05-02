// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
// ignore: camel_case_types, must_be_immutable
class Bmi_r extends StatelessWidget {


double? result;
bool? IsMael;
int? Age;

Bmi_r({Key? key,
    required this.result,
    required this.IsMael,
    required this.Age,
}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:const Icon(Icons.keyboard_arrow_left_rounded),
        ),

        title:const  Text('PAG TOW'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          Text('Gender : ${ IsMael! ? 'Mael' : 'Femael'}',
            style:const TextStyle(fontSize:40,color:Colors.purpleAccent)),
          Text('Result : $result',
            style:const TextStyle(fontSize:40,color:Colors.purpleAccent)),
          Text('Age : $Age',
                style:const TextStyle(fontSize:40,color:Colors.purpleAccent)),
          ],
        ),
      ),
    );
  }
}
