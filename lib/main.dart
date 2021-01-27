import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.red,
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballChange = 1;
  void changeImage() {
    setState(() {
      ballChange = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeImage();
              },
              child: Image(
                image: AssetImage('images/ball$ballChange.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
