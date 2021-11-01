import 'package:cardcode/Controllers/EditingController.dart';
import 'package:cardcode/Widgets/CardShowCode.dart';
import 'package:cardcode/Widgets/Keyboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cardcode/Controllers/CodeController.dart';
import 'package:cardcode/models/CodeModel.dart';

class HomeScreen extends StatelessWidget {
  final CodeModel code = CodeModel();
  final CodeController codeController = Get.put(CodeController());
  final EditingControler edCtrl = Get.put(EditingControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [
          Obx(() => edCtrl.editing.isTrue
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
                child: Obx(() =>
                    edCtrl.editing.isTrue ? CardShowCode() : Text("toto")),
              ),
            ),
            Expanded(
              flex: 5,
              child: Obx(() => Text(codeController.letter.string +
                  ' ' +
                  codeController.number.string)),
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
