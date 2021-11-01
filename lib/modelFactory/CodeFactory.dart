import 'package:cardcode/models/CodeModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CodeFactory extends Factory<CodeModel> {
  final List<Set<Object>> data = [
    {"maison", 8452}
  ];

  CodeFactory(
    ValueGetter<CodeModel> constructor,
  ) : super(constructor);
}
