// ignore_for_file: file_names, avoid_print, non_constant_identifier_names
import 'package:flutter/material.dart';
class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);
  @override
  State<Page4> createState() => _Page4State();
}
class _Page4State extends State<Page4> {

  // Color? color =const Color.fromRGBO(8,83,93,100);
  bool? IsMael=true;
  double? height=60;
  int Weg =180;
  int Age=65;
  @override
  Widget build(BuildContext context) {
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
                          setState(() {
                            IsMael=true;
                          });

                        },

                        child: Container(
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color:IsMael! ?const Color.fromRGBO(15,83,
                                    93,100) :Colors.white,
                                size:115,
                             ),
                               Text('MALE',
                              style:TextStyle(
                                fontSize:25,
                                fontWeight:FontWeight.bold,
                                color:IsMael! ? const Color.fromRGBO(15,83,
                                    93,100):Colors.white,
                              )),
                            ],
                          ),
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10.0),
                              color: IsMael! ?  Colors.white :  const Color
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
                          setState(() {
                            IsMael=false;
                          });

                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: IsMael! ?Colors.white :const Color
                                    .fromRGBO
                                  (15,83,
                                    93,100),
                                size:115,

                              ),
                               Text('FEMALE',
                                  style: TextStyle(
                                    fontSize:25,
                                    fontWeight:FontWeight.bold,
                                    color:IsMael! ? Colors.white:const Color.fromRGBO(15,83,
                                        93,100),
                                  )),
                            ],
                          ),
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(10.0),
                            color: IsMael! ? const Color.fromRGBO(15,83,93,100)
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
                          Text('${height!.round()}',
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
                        value:height!,
                        max:100.0,
                        min:10.0,
                        activeColor:Colors.indigo,
                        inactiveColor:Colors.white,
                        thumbColor:Colors.blue,
                        onChanged:(double value)
                        {
                          setState(() {
                            height = value;
                          });

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
                             Text('$Weg',
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
                                          setState(() {
                                          Weg++;
                                          });
                                          },
                                          child:const Icon(Icons.add,
                                            color:Colors.white,
                                            size:30,),
                                          backgroundColor:Colors.blueGrey,

                                        ),
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          Weg--;
                                        });
                                      },
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
                             Text('$Age',
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
                                        setState(() {
                                          Age++;
                                        });
                                      },
                                      child:const Icon(Icons.add,
                                        color:Colors.white,
                                        size:30,),
                                      backgroundColor:Colors.blueGrey,

                                    ),
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          Age--;
                                        });
                                      },
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

                onPressed:(){},
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
  }
}

