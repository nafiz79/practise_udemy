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
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing:
            CupertinoSwitch(value: true, onChanged: (bool onChanged) => true),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            CupertinoButton(child: Text('gkjsfhd'), onPressed: () {}),
            CupertinoButton.filled(child: Text('gkjsfhd'), onPressed: () {}),
            CupertinoTextField(),
            CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                    label: 'jkd', icon: Icon(CupertinoIcons.home)),
                BottomNavigationBarItem(
                    label: 'jkd', icon: Icon(CupertinoIcons.home)),
                BottomNavigationBarItem(
                    label: 'jkd', icon: Icon(CupertinoIcons.home)),
                BottomNavigationBarItem(
                    label: 'jkd', icon: Icon(CupertinoIcons.home)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
