import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
      Tex),
      backgroundColor: Colors.white,
      body: Wrap(
        spacing: 20,
        children: [
          Container(
            width: 400,
            height: 100,
            color: Colors.white60,
          ),Container(
            width: 400,
            height: 100,
            color: Colors.red,
          ),Container(
            width: 400,
            height: 100,
            color: Colors.yellow,
          ),Container(
            width: 400,
            height: 100,
            color: Colors.black,
          ),
        ],
      )
      );
    
  }
}
