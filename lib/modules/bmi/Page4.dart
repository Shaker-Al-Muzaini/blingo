// ignore_for_file: file_names, avoid_print, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors
import 'dart:math';

import 'package:blingo/modules/bmi/bmi-r.dart';
import 'package:blingo/modules/coutter/cubit.dart';
import 'package:blingo/modules/coutter/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>Cubit_widgets(),
      child: BlocConsumer<Cubit_widgets ,Cou_states>(
        listener: (context, state) { },
        builder:(context,state){
       return Scaffold(
        appBar:AppBar(
        backgroundColor:const Color.fromRGBO(0,35,60,60),
        title:const Center(child: Text('shaker')),
        ),
      body:Container(
    color:const Color.fromRGBO(0,35,60,60),
    child: Column(
    children:[
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    children: [
    Expanded(
    child: GestureDetector(
    onTap:(

    ){
    Cubit_widgets.get(context).IsMael=true;
    Cubit_widgets.get(context).isMaell();

    },

    child: Container(
    child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children: [
    Icon(
    Icons.male,
    color:Cubit_widgets.get(context).IsMael ?const Color.fromRGBO(15,83,
    93,100) :Colors.white,
    size:115,
    ),
    Text('MALE',
    style:TextStyle(
    fontSize:25,
    fontWeight:FontWeight.bold,
    color:Cubit_widgets.get(context).IsMael ? const Color.fromRGBO(15,83,
    93,100):Colors.white,
    )),
    ],
    ),
    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(10.0),
    color: Cubit_widgets.get(context).IsMael ?  Colors.white :  const Color
        .fromRGBO
    (8,83,93,
    100),
    ),
    ),
    ),
    ),
    const SizedBox(width:15),
    Expanded(
    child: GestureDetector(
    onTap:(){
      Cubit_widgets.get(context).IsMael=false;
      Cubit_widgets.get(context).isMaell();
    },
    child: Container(
    child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children: [
    Icon(
    Icons.female,
    color:Cubit_widgets.get(context).IsMael ?Colors.white :const Color
        .fromRGBO
    (15,83,
    93,100),
    size:115,

    ),
    Text('FEMALE',
    style: TextStyle(
    fontSize:25,
    fontWeight:FontWeight.bold,
    color:Cubit_widgets.get(context).IsMael ? Colors.white:const Color.fromRGBO(15,83,
    93,100),
    )),
    ],
    ),
    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(10.0),
    color: Cubit_widgets.get(context).IsMael ? const Color.fromRGBO(15,83,93,100)
        :Colors.white,
    ),
    ),
    ),
    ),
    ],

    ),
    ),
    ),
    const SizedBox(height:5),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    width:double.infinity,
    child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children:[
    const Text('WELGHT',
    style:TextStyle(
    fontSize:20,
    fontWeight:FontWeight.bold,
    color:Colors.white,
    )),
    Row(
    mainAxisAlignment:MainAxisAlignment.center,
    crossAxisAlignment:CrossAxisAlignment.baseline,
    textBaseline:TextBaseline.alphabetic,
    children: [
    Text('${Cubit_widgets.get(context).height.round()}',
    style:const TextStyle(
    fontSize:45,
    fontWeight:FontWeight.bold,
    color:Colors.white,
    )),
    const Text('cm',
    style:TextStyle(
    fontWeight:FontWeight.bold,
    color:Colors.lightBlue,
    )),
    ],
    ),
    Slider(
    value:Cubit_widgets.get(context).height,
    max:190.0,
    min:10.0,
    activeColor:Colors.indigo,
    inactiveColor:Colors.white,
    thumbColor:Colors.blue,
    onChanged:(double value)
    {

    Cubit_widgets.get(context).height=value;
    Cubit_widgets.get(context).heights();
    },
    ),
    ],

    ),
    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(10.0),
    color:const Color.fromRGBO(8,83,93,100),
    ),

    ),
    ),
    ),
    const SizedBox(height:5),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    children: [
    Expanded(
    child: Container(
    child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children:[
    const Text('WELGHT',
    style:TextStyle(
    fontSize:20,
    fontWeight:FontWeight.bold,
    color:Colors.white,
    )),
    Text('${Cubit_widgets.get(context).numbers_l}',
    style:const TextStyle(
    fontSize:45,
    fontWeight:FontWeight.bold,
    color:Colors.white,
    )),
    Padding(
    padding:  const EdgeInsets.all(12.0),
    child: Row(
    children:  [
    Expanded(
    child: FloatingActionButton(
    onPressed:(){
    Cubit_widgets.get(context).plus_number();
    },
    heroTag: 'Weg+',
    child:const Icon(Icons.add,
    color:Colors.white,
    size:30,),
    backgroundColor:Colors.blueGrey,

    ),
    ),
    Expanded(
    child: FloatingActionButton(
    onPressed:(){
    Cubit_widgets.get(context).muins_number();
    },
    heroTag: 'Weg-',
    child:const Icon(Icons.remove,
    color:Colors.white,
    size:30),
    backgroundColor:Colors.blueGrey,

    ),
    )

    ],
    ),
    ),
    ],
    ),
    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(10.0),
    color:const Color.fromRGBO(8,83,93,100),
    ),
    ),
    ),
    const SizedBox(width:15),
    Expanded(
    child: Container(
    child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children:[
    const Text('AGE',
    style:TextStyle(
    fontSize:20,
    fontWeight:FontWeight.bold,
    color:Colors.white,
    )),
    Text('${Cubit_widgets.get(context).Age}',
    style:const TextStyle(
    fontSize:45,
    fontWeight:FontWeight.bold,
    color:Colors.white,
    )),
    Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
    children: [
    Expanded(
    child: FloatingActionButton(
    onPressed:(){
      Cubit_widgets.get(context).age_p();

    },
    heroTag:'Age+',
    child:const Icon(Icons.add,
    color:Colors.white,
    size:30,),
    backgroundColor:Colors.blueGrey,

    ),
    ),
    Expanded(
    child: FloatingActionButton(
    onPressed:(){
    Cubit_widgets.get(context).age_m();
    },
    heroTag: 'Age-',
    child:const Icon(Icons.remove,
    color:Colors.white,
    size:30),
    backgroundColor:Colors.blueGrey,

    ),
    ),
    ],
    ),
    ),
    ],
    ),
    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(10.0),
    color:const Color.fromRGBO(8,83,93,100),
    ),
    ),
    ),
    ],

    ),
    ),
    ),
    Container(
    color:Colors.pink,
    width:double.infinity,
    child: MaterialButton(

    onPressed:(){
    var  result = Cubit_widgets.get(context).numbers_l/pow(Cubit_widgets
            .get(context).height/100,2);
    print(result);
    Navigator.push(
    context,
    MaterialPageRoute(builder:(cosntxt)=>Bmi_r(IsMael: Cubit_widgets.get
      (context).IsMael,
            Age: Cubit_widgets.get(context).Age, result: result)));
    },
    child:const Text('Shaker',
    style:TextStyle(
    color:Colors.white,
    )),
    ),
    ),

    ],
    ),
    ),
    );
    },

      ),
    );
  }

}
