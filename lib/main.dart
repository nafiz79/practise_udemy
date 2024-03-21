// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.pink,
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              wordSpacing: 0.5,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
            foregroundColor: Colors.deepOrange,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 7,
          shadowColor: Colors.green,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 22),
          bodyMedium: TextStyle(fontSize: 18),
          bodySmall: TextStyle(fontSize: 12),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amberAccent,
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello World 0',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            'Hello World 1',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Hello World 2',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text('Hello World 3=default '),
          TextButton(onPressed: () {}, child: Text('Tap Here 0')),
          TextButton(onPressed: () {}, child: Text('Tap Here 0')),
          TextButton(onPressed: () {}, child: Text('Tap Here 0')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.amber,
            ),
            onPressed: () {},
            child: Text('Tap Here 1'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Tap Here 2'))
        ],
      )),
    );
  }
}
