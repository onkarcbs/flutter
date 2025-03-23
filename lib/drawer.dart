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
        //comment the leading first
        drawer: Drawer(
          semanticLabel: 'Menu',
          backgroundColor: Colors.amberAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(child: Image.asset('onkar1.jpg')),
                  ),
                  accountName: Text('Onkar Singh'),
                  accountEmail: Text('onkarsingh@sscbsdu.ac.in'),
                ),
                // Column(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(3),
                //         border: Border.all(color: Colors.green, width: 2),
                //       ),
                //       child: Image.asset('onkar.jpg'),
                //     ),
                //     Text(
                //       'Onkar Singh',
                //       style: TextStyle(
                //         fontStyle: FontStyle.italic,
                //         fontSize: 25,
                //       ),
                //     ),
                //   ],
                // ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('About Me'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
              ListTile(
                leading: Icon(Icons.work),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('Experience'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
              ListTile(
                leading: Icon(Icons.science),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('Research'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('Qualification'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('Personal Information'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
              ListTile(
                leading: Icon(Icons.cloud),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('Future Plans'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
              ListTile(
                leading: Icon(Icons.mail),
                textColor: Colors.green,
                hoverColor: Colors.deepOrange,
                minTileHeight: 50,
                title: Text('Contact Me'),
                onTap: () {
                  Navigator.pop(cont);
                },
              ),
            ],
          ),
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
          child: Icon(Icons.arrow_upward, color: Colors.white),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Back',
              icon: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
