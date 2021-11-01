import 'package:cardcode/Controllers/CodeController.dart';
import 'package:cardcode/Controllers/EditingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Keyboard extends StatelessWidget {
  final int debut;
  final int fin;
  final bool letter;
  final CodeController codeController = Get.find();
  final EditingControler edCtrl = Get.find();

  Keyboard(this.debut, this.fin, this.letter);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          for (var i = this.debut; i < this.fin; i++)
            ElevatedButton(
              child: Text(
                  this.letter ? String.fromCharCode(i) : (i - 64).toString()),
              onPressed: () {
                if (letter) {
                  codeController.chooseLetter(String.fromCharCode(i));
                } else {
                  codeController.chooseNumber(i - 64);
                }
              },
              onLongPress: () {
                edCtrl.editing.value = !edCtrl.editing.value;
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(80, 50),
              ),
            ),
        ],
      ),
    );
  }
}
