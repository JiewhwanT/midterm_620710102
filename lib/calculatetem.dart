
import 'dart:math';

enum Result {
  CtoF,
  CtoK,
  FtoC,
  FtoK,
  KtoC,
  KtoF,
}

class Tem {
  double CtoF = 0;
  double CtoK = 0;
  double FtoC = 0;
  double FtoK = 0;
  double KtoC = 0;
  double KtoF = 0;

  Tem(){

  }


  void doTem1 (int num) {
    CtoF = num * (9 / 5) + 32;
  }
  void doTem2 (int num) {
    CtoK = num + 273.15;
  }
  void doTem3 (int num) {
    FtoC = (num - 32) * 5 / 9;
  }
  void doTem4 (int num) {
    FtoK = 5 / 9 * (num - 32) + 273.15;
  }
  void doTem5 (int num) {
    KtoC = num - 273;
  }
  void doTem6 (int num) {

    KtoF = 9 / 5 * (num - 273) + 32;
  }

}


