// ignore_for_file: must_be_immutable, avoid_print, file_names
import 'package:flutter/material.dart';
class CinterScrren extends StatefulWidget {
  const CinterScrren({Key? key}) : super(key: key);
  @override
  State<CinterScrren> createState() => _CinterScrrenState();
}
class _CinterScrrenState extends State<CinterScrren> {
  int cont =1;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('ConstrueScrren'),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.end,
          mainAxisSize:MainAxisSize.min,
          children:[
            TextButton(
              onPressed:(){
                setState(() {
                  cont--;
                  print(cont);
                });
              },
              child:const Text('_',
                  style:TextStyle(
                    fontSize:70,
                    fontWeight:FontWeight.w700,
                    color:Colors.red,

                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left:50,right: 50),
              child:  Text(
                  '$cont',
                  style:const TextStyle(
                    fontFamily:'cairo',
                    fontSize:70,
                    fontWeight:FontWeight.bold,
                  )
              ),
            ),
            TextButton(
              onPressed:(){
                setState(() {
                  cont++;
                  print(cont);
                });
              },
              child:const Text('+',
                  style:TextStyle(
                    fontSize:70,
                    fontWeight:FontWeight.w700,
                    color:Colors.green,

                  )),
            ),
          ],
        ),
      ),
    );

  }
}
