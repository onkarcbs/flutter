// Container Widget
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext cont) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar Title'),
          backgroundColor: Colors.redAccent,
          leading: IconButton(
            onPressed: () {},
            tooltip: 'Menu',
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Comment',
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              tooltip: 'Setting',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        // drawer: Drawer(child: ListView()),
        body:
        // Center(
        // child:
        Container(
          // height: 100,
          // width: 150,
          // margin: EdgeInsets.all(200), //blank space around container
          padding: EdgeInsets.all(100), //space b/w child and border
          // alignment: Alignment.center, //child position
          // decoration: BoxDecoration(
          //   color: Colors.redAccent,
          //   border: Border.all(width: 5, color: Colors.green),
          //   // borderRadius: BorderRadius.circular(20),
          //   // boxShadow: [
          //   //   BoxShadow(
          //   //     // blurRadius: 15,
          //   //     color: Colors.brown,
          //   //     // spreadRadius: 10,
          //   //     offset: Offset(20, 20), //comment other properties
          //   //     // blurStyle: BlurStyle.outer,
          //   //   ),
          //   // ],
          //   shape: BoxShape.circle,
          //   // gradient: LinearGradient(colors: [Colors.black, Colors.white]),
          // ),

          // foregroundDecoration: BoxDecoration(
          //   color: Colors.blue),
          // transform: Matrix4.rotationX(1.1),
          // transform: Matrix4.rotationZ(0.1),
          color: Colors.amberAccent,
          // constraints: BoxConstraints.expand(
          //adjusts with screen
          // width: 200,
          // height: 300,
          // ),
          // constraints: BoxConstraints(maxHeight: 300, maxWidth: 170),
          child: Text('Container Text'),
        ),
        // ),
      ),
    );
  }
}
