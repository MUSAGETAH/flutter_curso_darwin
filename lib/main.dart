import 'package:flutter/material.dart';
import 'package:native_demo/widgets/column.dart';
import 'package:native_demo/widgets/container.dart';
import 'package:native_demo/widgets/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myColumn(),
    );
  }
}