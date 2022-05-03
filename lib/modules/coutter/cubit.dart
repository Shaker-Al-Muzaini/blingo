// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_question_mark
import 'package:blingo/modules/coutter/states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
class Cubit_widgets extends Cubit<Cou_states> {
  Cubit_widgets() :super(Cou_initialState());

  static Cubit_widgets get(context)=>BlocProvider.of(context);
  int cont=0;
  void m(){
    cont --;
    emit(Cou_pluss(cont));
}
void p(){
    cont ++;
    emit(Cou_minuss(cont));
}


int numbers_l=0;
  void plus_number(){
    numbers_l++;
    emit(numbers_l_plus());

  }
  void muins_number(){
    numbers_l--;
    emit(numbers_l_minus());
  }



  int Age=20;
  void age_m(){
    Age--;
    emit(age_minus());
  }
  void age_p(){
    Age++;
    emit(age_plus());
  }



  double height =60;
  void heights(){
    emit(heigh());
  }


  bool IsMael =true ;
  void isMaell(){

    emit(IsMaels());
  }
}

