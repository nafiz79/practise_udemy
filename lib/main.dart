// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    // Size size=MediaQuery.of(context).size;
    // Size size = MediaQuery.sizeOf(context);
    // print(size);
    // print(size.width);
    // print(size.height);
    // print(size.aspectRatio);
    // print(size.flipped);
    // Orientation orientation = MediaQuery.orientationOf(context);
    // print(orientation);
    // List<DisplayFeature> displayfeatures =
    //     MediaQuery.displayFeaturesOf(context);
    // print(displayfeatures);
    // print(MediaQuery.devicePixelRatioOf(context));
    print(MediaQuery.platformBrightnessOf(context));

    return Scaffold(
      appBar: AppBar(
        title: Text('Intro to Responsive Design'),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);
          print(constraints.maxHeight);
          if (constraints.maxWidth > 500) {
            return Center(child: Text('Too big screen'));
          } else {
            return Center(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(orientation == Orientation.portrait
                          ? 'Portrait'
                          : 'Lanscape'),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text('sj dfskd hjfgs djkfhsjd hfkhsd '),
                          Text('sj djd hfgf gh khsd '),
                          Text('sj dfskd hjfgs djkffsdfd shsjd '),
                          Text('sj dfskd hjfgd gh kjdfh gdfjk gh dfkugd f '),
                          Text('sj dfskd hjfgs djk gh kjdfh gdfjk ghfjsd f '),
                          Text('sj dfskd hjfgkfhsjd gh kjjk gh dfkug fjsd f '),
                          Text('sj dfskd hjfgs djkfhsjd gh k gh dfkug fjsd f '),
                        ],
                      )
                    ],
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
