// ignore_for_file: must_be_immutable, avoid_print, file_names

import 'package:blingo/modules/coutter/cubit.dart';
import 'package:blingo/modules/coutter/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ConterScrren extends StatelessWidget {
  const ConterScrren({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=>Cubit_widgets(),
      child: BlocConsumer<Cubit_widgets ,Cou_states>(
        listener: (context,state){
          if(state is Cou_pluss ) {
            print('is plus ${state.cont}');
          }

          if(state is Cou_minuss) {
            print('is minus  ${state.cont} ');
          }
        },
        builder: (context,state){
          return   Scaffold(
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
                      Cubit_widgets.get(context).m();
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
                       ' ${Cubit_widgets.get(context).cont}',
                        style:const TextStyle(
                          fontFamily:'cairo',
                          fontSize:70,
                          fontWeight:FontWeight.bold,
                        )
                    ),
                  ),
                  TextButton(
                    onPressed:(){
                      Cubit_widgets.get(context).p();
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
        },
      ),
    );

  }
}