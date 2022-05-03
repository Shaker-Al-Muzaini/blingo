// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names
import 'package:flutter/material.dart';

//By_Reusable components info Button
Widget De_Button ({
   double? width=double.infinity,
   Color? backgroundColor =Colors.blue,
   required final Function()?  function,
   required String? text,
   double? BorderRadiuss =0,
})=>Container(
width:width!,
child: MaterialButton(
onPressed:function!,
child: Text(text!,
style:const TextStyle(color:Colors.white))
),
  decoration:BoxDecoration(
      color:backgroundColor!,
    borderRadius:BorderRadius.circular(BorderRadiuss!)
  )
);

//info Text_Form_Field

Widget Text_Form_Field({
   required TextEditingController controll,
   required TextInputType keyboardType,
   required IconData? prefix,
})=>TextFormField(
   controller:controll,
   onFieldSubmitted:(String value){
      // ignore: avoid_print
      print(value);
   },
   validator:( value){
      if (value!.isEmpty){
         return"email not br Empty";
      }
      return null;
   },
   decoration:InputDecoration(
      labelText:'User Name',
      prefixIcon:Icon(prefix!),
      border:const OutlineInputBorder(),
   ),
   style:const TextStyle(
      color:Colors.black,
      fontFamily:'cairo',
      fontSize: 24,
   ),
   keyboardType:keyboardType,
 );