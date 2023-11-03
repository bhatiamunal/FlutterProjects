import 'dart:async';
import 'package:flutter/material.dart';

class welcomeScreen extends StatefulWidget {
  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State {
  var _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,  // Added
      initialIndex: 0, //Added
      child: Scaffold(
        appBar: AppBar(
            title: Text("World of munal bhatia"),
            bottom: const TabBar(
              tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
      ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_transit),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Login'),
                selected: _selectedIndex == 0,
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              ListTile(
                title: const Text('API List View'),
                selected: _selectedIndex == 1,
                onTap: () {
                  Navigator.pushNamed(context, '/API');
                },
              ),
              ListTile(
                title: const Text('List View'),
                selected: _selectedIndex == 2,
                onTap: () {
                  Navigator.pushNamed(context, '/ListView');
                },
              ),
              ListTile(
                title: const Text('Grid View'),
                selected: _selectedIndex == 3,
                onTap: () {
                  Navigator.pushNamed(context, '/gridView');
                },
              ),
              ListTile(
                title: const Text('Bottom Drower'),
                selected: _selectedIndex == 4,
                onTap: () {
                  Navigator.pushNamed(context, '/bottomdrower');
                },
              ),
              ListTile(
                title: const Text('Card With List View'),
                selected: _selectedIndex == 4,
                onTap: () {
                  Navigator.pushNamed(context, '/Card');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
