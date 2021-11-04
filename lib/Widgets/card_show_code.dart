import 'dart:ui';

import 'package:cardcode/Controllers/code_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardShowCode extends StatelessWidget {
  final CodeController codeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Container(
          height: 100,
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
            child: Obx(
              () => Text(
                codeController.getData(
                    codeController.letter.string, codeController.number.value),
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
