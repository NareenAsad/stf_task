import 'package:flutter/material.dart';
import 'package:stateful_task/colorbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ColorBox(),
      ),
    );
  }
}
