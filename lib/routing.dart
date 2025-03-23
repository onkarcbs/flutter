import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'Navigation and Routing',
      color: Colors.amber,
      home: First(),
    ),
  );
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
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
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            tooltip: 'Settings',
          ),
        ],
      ),
      body: Center(
        child: InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3, color: Colors.deepOrangeAccent),
              color: Colors.lightGreen,
            ),
            child: Text('Tap to go to Second Screen'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Second()),
            );
          },
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
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
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            tooltip: 'Settings',
          ),
        ],
      ),
      body: Center(
        child: InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3, color: Colors.deepOrangeAccent),
              color: Colors.blueGrey,
            ),
            child: Text(
              'This is the Second Screen. \n Tap again to go to First Screen',
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// class Second extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('Hello');
//   }
// }
