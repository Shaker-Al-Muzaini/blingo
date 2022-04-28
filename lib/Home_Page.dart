// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Date{
  late final String name;
  late final String opject;

  Date({
    required this.name,
    required this.opject,

});
}


// ignore: camel_case_types, must_be_immutable
class Home_Page extends StatelessWidget{

// ignore: non_constant_identifier_names
List<Date>DeteInfo=[
  Date(
    name:'الاسم',
    opject:'القدس',
  ),
  Date(
    name:'المساحة',
    opject:'125كم',
  ),
  Date(
    name:'السكان',
    opject:'358000نسمه',
  ),
  Date(
    name:'الدولة',
    opject:'فلسطين',
  ),
  Date(
    name:'الطالب',
    opject:'شاكر المزيني',
  ),

];

  Home_Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(
          Icons.home,
        ),
        title:const Text('عاصمة فلسطين'),
        actions:[
          IconButton (icon:const Icon(Icons.menu),onPressed:() {},),
        ],
        centerTitle: true,
        backgroundColor:const Color.fromARGB(137, 3, 27, 131),
        elevation:20.1,
      ),

      body:SingleChildScrollView(
        child: Column(
          children:[
            Container(
              decoration:const BoxDecoration(
                borderRadius:BorderRadiusDirectional.only(
                  bottomEnd:Radius.circular(8.0),
                  bottomStart:Radius.circular(8.0),
                )),
               clipBehavior:Clip.antiAliasWithSaveLayer,
              child: Stack(
                children:[
                  const Image(
                    width:double.infinity,
                    image:AssetImage(
                      'images/j.png'

                    )
                  ),
                  Container(
                    color:const Color.fromARGB(0, 0, 0, 0),
                    width:double.infinity,
                    padding:const EdgeInsetsDirectional.only(
                      top: 220,
                      bottom: 10,
                    ),
                    child: const Text(
                      'shaker',
                      textAlign:TextAlign.center,
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:44.0,
                        fontFamily:'cairo',
                      ),

                    ),
                  ),
                ],

              ),

            ),
            const Text('مدينة القدس ',
            style:TextStyle(
              fontSize:24,
              fontFamily:'cairo', )),
            const SizedBox(height:1),
            ListView.separated(
              shrinkWrap:true,
              itemBuilder:(context,index)=>Deta(DeteInfo[index]),
              separatorBuilder:(context,index)
              =>const SizedBox (height:1),
              itemCount:DeteInfo.length,
            )
          ],

        ),
      )

    );

  }

  // ignore: non_constant_identifier_names
  Widget Deta(Date D)=>Container(
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          color: Color.fromARGB(58, 197, 197, 197),
          border: Border(left:BorderSide(color:Colors.black,width:2),right:BorderSide(color:Colors.white,width:2),
            top:BorderSide(color:Colors.red,width:2),bottom:BorderSide(color:Colors.green,width:2),)

      ),

      width:double.infinity,
      child: Row(
          children: [
            Expanded(
              child:  Container(
                margin: const EdgeInsets.all(8),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:Border.all(color:Colors.black,width:2),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 50,
                  ),
                  child: Text(
                    D.opject, //  textWidthBasis:,
                    textAlign: TextAlign.center,
                    style:const TextStyle(
                      fontSize: 30,
                      fontFamily:'cairo',
                      color:Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:Border.all(color:Colors.black,width:2),
              ),
              child: Expanded(
                child:  Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 40,
                  ),
                  child: Text(
                      D.name,
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                        color:Colors.blueAccent,
                        fontSize: 30,
                      )
                  ),
                ),
              ),
            ),
          ]
      )
  );

}
