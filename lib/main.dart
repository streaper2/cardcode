import 'dart:convert';
import 'package:cardcode/Controllers/CodeController.dart';
import 'package:cardcode/Screens/HomeScreen.dart';
import 'package:cardcode/models/CodeModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
