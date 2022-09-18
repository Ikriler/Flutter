import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.amber,
            ),
          ),
          
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.amber,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child:
                  ElevatedButton(onPressed: () => {}, child: Text("Button"))),
          Expanded(
            child: Container(),
          ),
          Text(
            "ads",
            textAlign: TextAlign.center,
            
          ),
          
        ],
      ),
    );
  }
}
