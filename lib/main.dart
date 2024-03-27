// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practise_2/home_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(DevicePreview(
      //for production enabled is set to false
      //enabled can be in kReleaseMode/kDebugMode/True/False
      enabled: kDebugMode,
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) {
        return MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      print(deviceType);
      return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: HomeScreen(),
      );
    });
  }
}
