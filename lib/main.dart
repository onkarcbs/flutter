import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cars',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Companies'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 222, 206, 57),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'Setting',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepOrangeAccent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(child: Image.asset('onkar1.jpg')),
              accountName: Text('Onkar Singh'),
              accountEmail: Text('onkarsingh@sscbsdu.ac.in'),
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {},
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(Icons.work),
              title: Text('Experience'),
              onTap: () {},
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(Icons.science),
              title: Text('Research'),
              onTap: () {},
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(Icons.book),
              title: Text('Education Qualification'),
              onTap: () {},
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(Icons.mail),
              title: Text('Contact Me'),
              onTap: () {},
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(Icons.logout),
              title: Text('Log'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.down,
            spacing: 2,
            children: [
              const SizedBox(width: 10),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(50), //space b/w child and border
                  color: const Color.fromARGB(255, 53, 138, 230),
                  child: Text('Tata Motors'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tata()),
                  );
                },
              ),
              // Text('Text Child'),
              Container(
                padding: EdgeInsets.all(50), //space b/w child and border
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 223, 62, 83),
                child: Text('Mahindra'),
              ),
              Container(
                padding: EdgeInsets.all(50), //space b/w child and border
                alignment: Alignment.center,
                color: Colors.green,
                child: Text('Container 3 Text'),
              ),
              Container(
                padding: EdgeInsets.all(50), //space b/w child and border
                alignment: Alignment.center,
                color: Colors.blueGrey,
                child: Text('Container 4 Text'),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50), //space b/w child and border
                color: Colors.orange,
                child: Text('Container 5 Text'),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: IconButton(
              tooltip: 'Home',
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: IconButton(
              tooltip: 'Message',
              onPressed: () {},
              icon: Icon(Icons.message),
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        tooltip: 'Back',
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 222, 206, 57),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'Setting',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: IconButton(
              tooltip: 'Home',
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: IconButton(
              tooltip: 'Message',
              onPressed: () {},
              icon: Icon(Icons.message),
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }
}
