import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.red,
      ),
      body: MagicBall(),
    ),
  ),);
}

class MagicBall extends StatefulWidget {


  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: MaterialButton(
          onPressed: (){
            setState(() {
              number=Random().nextInt(5)+1;
              print(number);
            });

          },
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }
}


