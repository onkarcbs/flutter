import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'First App',
      // theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is the title of AppBar!'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Text(
          'Hello World! I am Onkar Singh. This is my first flutter app.',
          textScaler: TextScaler.linear(3),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
