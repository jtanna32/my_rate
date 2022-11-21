import 'package:flutter/material.dart';
import 'package:my_rate/example.dart';
import 'package:my_rate/home.dart';
import 'package:my_rate/option.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Option(),
    );
  }
}
