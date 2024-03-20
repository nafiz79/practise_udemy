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
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Switch(value: true, onChanged: (bool value) {}),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Alert'),
                          content: Text('You are in Danger'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel')),
                            TextButton(onPressed: () {}, child: Text('Okay'))
                          ],
                        ));
              },
              child: Text('Show dialog')),
          ElevatedButton(
              onPressed: () {
                showAboutDialog(
                    context: context,
                    applicationName: "PikaPie",
                    applicationVersion: "1.4.2",
                    children: [
                      Text('This Application is good for regular uses'),
                    ]);
              },
              child: Text('Show About')),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.grey.shade100,
                  barrierColor: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(child: Text('This is Modal Bottom Sheet')),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Show Bottom Sheet'))
        ],
      ),
    );
  }
}
