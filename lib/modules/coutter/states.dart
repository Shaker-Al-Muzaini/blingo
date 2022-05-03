// ignore_for_file: camel_case_types

abstract class Cou_states {}
class Cou_initialState extends Cou_states{}

class Cou_minuss extends Cou_states{
  final int cont ;
  Cou_minuss(this.cont);
}
class Cou_pluss extends Cou_states
{
  final int cont ;
  Cou_pluss (this.cont);
}


class numbers_l_plus extends Cou_states{

}
class numbers_l_minus extends Cou_states{

}


class age_minus extends Cou_states{

}

class age_plus extends Cou_states{

}

class heigh extends Cou_states{

}

class IsMaels extends Cou_states{

}