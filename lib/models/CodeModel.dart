import 'package:flutter/material.dart';

class CodeModel {
  final code = {
    'A': {4811, 6744, 4911, 6663, 9451, 5617, 1489, 7474},
    'B': {0339, 6577, 9204, 5578, 5356, 6444, 3581, 4561}
  };

  getData(String cle, pos) {
    return code[cle]?.elementAt(pos).toString();
  }
}
