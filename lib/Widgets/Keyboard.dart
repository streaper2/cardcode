import 'package:cardcode/Controllers/code_controller.dart';
import 'package:cardcode/Controllers/editing_controller.dart';
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
            Obx(
              () => ElevatedButton(
                  child: Text(this.letter
                      ? String.fromCharCode(i)
                      : (i - 64).toString()),
                  onPressed: () {
                    if (letter) {
                      codeController.chooseLetter(String.fromCharCode(i));
                    } else {
                      codeController.chooseNumber(i - 64);
                    }
                    print(codeController.letter.value);
                  },
                  onLongPress: () {
                    edCtrl.editing.value = !edCtrl.editing.value;
                  },
                  /*style: ElevatedButton.styleFrom(
                  primary:
                      codeController.letter.value == String.fromCharCode(i) &&
                              this.letter
                          ? Colors.amber
                          : Colors.blue,
                  fixedSize: Size(80, 50),
                ),*/
                  style: letter
                      ? ElevatedButton.styleFrom(
                          primary: codeController.letter.value ==
                                  String.fromCharCode(i)
                              ? Colors.amber
                              : Colors.blue,
                          fixedSize: Size(80, 50),
                        )
                      : ElevatedButton.styleFrom(
                          primary: codeController.number.value == i - 64
                              ? Colors.amber
                              : Colors.blue,
                          fixedSize: Size(80, 50),
                        )),
            ),
        ],
      ),
    );
  }
}
