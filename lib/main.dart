// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practise_2/home_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (BuildContext context) {
        return MaterialApp(
          home: HomeScreen(),
        );
      },
    );
  }
}
