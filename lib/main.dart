import 'package:flutter/material.dart';
import 'package:native_demo/widgets/column.dart';
import 'package:native_demo/widgets/container.dart';
import 'package:native_demo/widgets/list-view.dart';
import 'package:native_demo/widgets/row.dart';
import 'package:native_demo/widgets/safe_area.dart';
import 'package:native_demo/widgets/scaffold.dart';
import 'package:native_demo/widgets/single_child_scroll_view.dart';
import 'package:native_demo/widgets/stack.dart';
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
      home: MyListView(),
    );
  }
}
