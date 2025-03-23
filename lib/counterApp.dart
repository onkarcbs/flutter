//stateful app
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.brown,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
          ),
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
        //comment the leading first
        body: Center(
          child: Text(
            '$num',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          elevation: 20,
          child: Icon(Icons.add, color: Colors.white),
          onPressed: () {
            setState(() {
              num++;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
