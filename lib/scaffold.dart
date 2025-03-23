//Scaffold Widget
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
          title: Text('Car Companies'),
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
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomRight: Radius.circular(25),
          //     bottomLeft: Radius.circular(25),
          //   ),
          // ),
          //shadow
          elevation: 10,
          shadowColor: Colors.brown,
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Menu',
          // ),
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
        drawer: Drawer(
          width: 200,
          elevation: 300,
          shadowColor: Colors.red,
          backgroundColor: Colors.amberAccent,
          child: Column(children: [Text('Text 1')]),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.lightBlueAccent,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Tata Motors', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.redAccent,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Mahindra', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Suzuki', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.orangeAccent,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Toyota', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.purpleAccent,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Jeep', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.brown,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Hyundai', style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          elevation: 20,
          child: Icon(Icons.add, color: Colors.white),
          onPressed: () {},
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
