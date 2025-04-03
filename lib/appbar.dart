// AppBar Widget

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext cont) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title of the Appbar'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          // titleSpacing: 100.0, //adjust space b/w title
          centerTitle: true,
          //height
          // toolbarHeight: 100,
          //opacity   [0~1]
          // toolbarOpacity: 0.5,
          //
          // shape: Border.all(color: Colors.black, width: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          //shadow
          elevation: 20,
          shadowColor: const Color.fromARGB(255, 25, 95, 5),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
              tooltip: 'Message',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
