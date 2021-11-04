import 'package:cardcode/Controllers/editing_controller.dart';
import 'package:cardcode/Widgets/card_show_code.dart';
import 'package:cardcode/Widgets/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cardcode/Controllers/code_controller.dart';

class HomeScreen extends StatelessWidget {
  final CodeController codeController = Get.put(CodeController());
  final EditingControler edCtrl = Get.put(EditingControler());
  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [
          Obx(() => edCtrl.editing.isFalse
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.create),
                )
              : IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.done),
                ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 60,
              child: Center(
                child: Obx(
                  () => edCtrl.editing.isFalse
                      ? CardShowCode()
                      : TextFormField(
                          controller: txt,
                          decoration: InputDecoration(
                            hintText: codeController.letter.value +
                                codeController.number.string,
                          ),
                          validator: (value) {
                            print(value);
                          },
                        ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ok');
                codeController.setData(txt.text);
              },
              child: Text('valider'),
            ),
            Expanded(
              flex: 5,
              child: Obx(
                () => Text(codeController.letter.string +
                    ' ' +
                    codeController.number.string),
              ),
            ),
            Expanded(
              flex: 25,
              child: Keyboard(65, 73, true),
            ),
            Expanded(
              flex: 25,
              child: Keyboard(65, 73, false),
            ),
          ],
        ),
      ),
    );
  }
}
