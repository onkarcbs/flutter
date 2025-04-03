//Car Companies Widget
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Details of Car Companies',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Companies using GitHub Cloning!'),
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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                child: Container(
                  color: Colors.lightBlueAccent,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text('Tata Motors', style: TextStyle(fontSize: 30)),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tata()),
                  );
                },
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
    );
  }
}

class Tata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tata Motors'),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.deepPurple,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            height: 150,
            alignment: Alignment.center,
            child: Text('Top Selling Cars', style: TextStyle(fontSize: 30)),
          ),
          const SizedBox(width: 20),
          Row(
            children: [
              Expanded(child: Image.asset('safari.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('curvv.jpg')),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        elevation: 20,
        child: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: IconButton(
              tooltip: 'Home',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              icon: Icon(Icons.home),
            ),
          ),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
