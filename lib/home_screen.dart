// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          // AspectRatio(
          //   aspectRatio: 16 / 9,
          //   child: Container(
          //     color: Colors.red,
          //     child: Image.network(
          //       'https://www.pexels.com/photo/cyclone-fence-in-shallow-photography-951408/',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Container(
          //   width: MediaQuery.sizeOf(context).width,
          //   height: MediaQuery.sizeOf(context).width,
          //   color: Colors.amber,
          //   child: FractionallySizedBox(
          //     widthFactor: 0.5,
          //     heightFactor: 0.5,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          // )
          // Flexible(
          //   fit: FlexFit.tight,
          //   //default flex is 1
          //   flex: 3,
          //   child: Container(
          //     color: Colors.amber,
          //     width: MediaQuery.sizeOf(context).width,
          //   ),
          // ),
          // Flexible(
          //   fit: FlexFit.tight,
          //   flex: 7,
          //   child: Column(
          //     children: [
          //       Flexible(
          //         child: Container(
          //           color: Colors.red,
          //           width: MediaQuery.sizeOf(context).width,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 50,
          //       )
          //     ],
          //   ),
          // ),
          // Flexible(
          //   // default flex is 1
          //   child: Row(
          //     children: [
          //       Flexible(
          //         child: Container(
          //           color: Colors.lightGreenAccent,
          //         ),
          //       ),
          //       Flexible(
          //         flex: 4,
          //         child: Container(
          //           color: Colors.blue,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Flexible(
          //   fit: FlexFit.tight,
          //   flex: 5,
          //   child: Container(
          //     color: Colors.purple,
          //     width: MediaQuery.sizeOf(context).width,
          //   ),
          // ),
          Container(
            height: 100,
            color: Colors.black54,
            width: MediaQuery.sizeOf(context).width,
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.lightGreenAccent,
              width: double.infinity,
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                height: 14,
                child: FittedBox(
                  child: Text(
                    'Nafees Ahamed',
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
