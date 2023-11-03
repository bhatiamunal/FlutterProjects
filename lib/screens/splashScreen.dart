import 'dart:async';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 150,
        child: Image.asset('../assets/image/logo.jpg'),
      ),
    );
  }
}
