import 'package:flutter/material.dart';

import 'screens/splashScreen.dart';
import 'screens/login.dart';
import './screens/welcome.dart';
import './screens/APIRequest.dart';
import './screens/List.dart';
import './screens/gridView.dart';
import './screens/bottom_drower.dart';
import './screens/CardWithListView.dart';
void main() {
  runApp(MaterialApp(
    title: 'Help Template',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.orange,
    ), // Start the app with the "/" named route. In this case, the app starts // on the FirstScreen widget.
    home: splashScreen(),
    routes: {
      '/login': (context) => loginScreen(),
      '/welcome': (context) => welcomeScreen(),
      '/API': (context) => APIRequestScreen(),
      '/ListView': (context) => listView(),
      '/gridView': (context) => gridView(),
      '/bottomdrower': (context) => bottomdrower(),
      '/Card': (context) => CardWithListView(),
      '/camera': (context) => CardWithListView(),
    },
  ));
}
