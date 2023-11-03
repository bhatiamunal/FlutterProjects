import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  //const loginScreen({super.key, required this.controller});
  //final PageController controller;
  @override
  State<loginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<loginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Text("Login")
    );
  }
}
