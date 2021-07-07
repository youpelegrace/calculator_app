// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:calculator_app/calculatorpage.dart';
import 'package:calculator_app/widgets/boxes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const HomePage(),
    );
  }
}
