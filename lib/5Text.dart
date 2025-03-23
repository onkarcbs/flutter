// Text Widget
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.blueGrey,
        ),

        body: Text(
          'Hello World, I am Onkar Singh. I am Teaching in the Shaheed Sukhdev College of Business Studies!',
          //comment the align first
          // textDirection: TextDirection.rtl,

          // Increase the textsize to two lines atleast
          // textAlign: TextAlign.center,
          // overflow: TextOverflow.ellipsis,

          // textScaler: TextScaler.linear(1.5),
          style: TextStyle(
            fontSize: 50,
            // fontWeight: FontWeight.w800,
            // letterSpacing: 4,
            // wordSpacing: 4,
            // color: Colors.blueAccent,
            // background: Paint()
            // ..color = Colors.green
            // ..style = PaintingStyle.stroke,
            //comment all first
            // foreground:
            //     Paint()
            //       ..color = Colors.purple
            //       ..strokeWidth = 3.0
            //       ..style = PaintingStyle.stroke,
            // background:
            //     Paint()
            //       ..color = Colors.orangeAccent
            //       ..strokeWidth = 3
            //       ..style = PaintingStyle.stroke,
            // backgroundColor: Colors.yellow,
            // fontStyle: FontStyle.italic,
            // decoration: TextDecoration.underline,
            // shadows: [
            // Shadow(color: Colors.grey, offset: Offset(4, 1), blurRadius: 2),
            // ],
          ),
          // softWrap: false,
          // maxLines: 2,
          // semanticsLabel: 'Alternative Label for the Text',
        ),

        // For text in the middle
        // body: Center(
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Hello World'),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    ),
  );
}
