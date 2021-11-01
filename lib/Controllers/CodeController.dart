import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CodeController extends GetxController {
  var letter = "A".obs;
  var number = 1.obs;
  final code = {
    'A': {4811, 6744, 4911, 6663, 9451, 5617, 1489, 7474},
    'B': {"0339", 6577, 9204, 5578, 5356, 6444, 3581, 4561},
    'C': {1555, 4026, 7937, 2849, 8501, 5927, 6173, 9928},
    'D': {5473, 2101, 5819, 4662, 1120, 1732, 8033, 4802}
  }.obs;

  chooseLetter(l) {
    print("j'imprime la lettre du controller" + l);
    letter.value = l;
  }

  chooseNumber(n) {
    number.value = n;
  }

  getData(String cle, pos) {
    return code[cle]?.elementAt(pos - 1).toString();
  }
}
