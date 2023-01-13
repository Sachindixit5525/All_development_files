import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('i_am_poor'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/coder.png'),
          ),
        ),
      ),
    ),
  );
}
