import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Companies',
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
        backgroundColor: Colors.redAccent,
        // // leading: IconButton(
        // //   onPressed: () {},
        // //   tooltip: 'Menu',

        //   icon: Icon(Icons.menu),
        // ),
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
        elevation: 30,
        shadowColor: const Color.fromARGB(255, 57, 41, 41),
        backgroundColor: const Color.fromARGB(255, 218, 218, 116),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 212, 110, 230),
              ),
              currentAccountPicture: ClipOval(child: Image.asset('onkar1.jpg')),
              accountName: Text('Onkar Singh'),
              accountEmail: Text('onkarsingh@sscbsdu.ac.in'),
            ),

            ListTile(
              minTileHeight: 50,
              hoverColor: Colors.greenAccent,
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {},
            ),
            ListTile(
              minTileHeight: 50,
              hoverColor: Colors.greenAccent,
              leading: Icon(Icons.work),
              title: Text('Experience'),
              onTap: () {},
            ),
            ListTile(
              minTileHeight: 50,
              hoverColor: Colors.greenAccent,
              leading: Icon(Icons.science),
              title: Text('Research'),
              onTap: () {},
            ),
            ListTile(
              minTileHeight: 50,
              hoverColor: Colors.greenAccent,
              leading: Icon(Icons.info),
              title: Text('Personal Information'),
              onTap: () {},
            ),
            ListTile(
              minTileHeight: 50,
              hoverColor: Colors.greenAccent,
              leading: Icon(Icons.mail),
              title: Text('Contact Me'),
              onTap: () {},
            ),
            ListTile(
              minTileHeight: 50,
              hoverColor: Colors.greenAccent,
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
            verticalDirection: VerticalDirection.down,
            spacing: 5,
            children: [
              const SizedBox(width: 10),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(50), //space b/w child and border
                  alignment: Alignment.center,
                  color: const Color.fromRGBO(255, 215, 64, 1),
                  child: Text(
                    'Tata Motors',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
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
                color: Colors.blueAccent,
                child: Text(
                  'Mahindra',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 24, 24),
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                  ),
                ),
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
                padding: EdgeInsets.all(50), //space b/w child and border
                alignment: Alignment.center,
                color: Colors.orange,
                child: Text('Container 5 Text'),
              ),
              Container(
                padding: EdgeInsets.all(50), //space b/w child and border
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 200, 60, 193),
                child: Text('Container 6 Text'),
              ),
              Container(
                padding: EdgeInsets.all(50), //space b/w child and border
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 197, 101, 42),
                child: Text('Container 7 Text'),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      floatingActionButton: IconButton(
        tooltip: 'Top',
        onPressed: () {},
        icon: Icon(Icons.arrow_upward),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'message', icon: Icon(Icons.message)),
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
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          onPressed: () {},
          tooltip: 'Menu',
          icon: Icon(Icons.menu),
        ),
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 50,
                        width: 400,
                        alignment: Alignment.center,
                        color: Colors.amberAccent,
                        child: Text('Tata Safari'),
                      ),
                    ),
                    Image.asset('safari.jpg'),
                  ],
                ),
              ),
              Expanded(child: Image.asset('curvv.jpg')),
            ],
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              icon: Icon(Icons.home),
            ),
          ),
          BottomNavigationBarItem(label: 'message', icon: Icon(Icons.message)),
        ],
      ),
    );
  }
}
