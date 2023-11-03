import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import './../API_Service/ServiceForAPI.dart';
import '../Model/User.dart';
class APIRequestScreen extends StatefulWidget {
  @override
  _APIRequestScreenState createState() => _APIRequestScreenState();
}

class _APIRequestScreenState extends State {
  late Future? futureAlbum;
  void initState() {
    super.initState();

    futureAlbum = ServiceForAPI.getProfiles();
  }
  @override
  Widget build(BuildContext context) {
    List<user> m1;
    return Scaffold(
      appBar: AppBar(title: Text("World of munal bhatia")),
      body:
      FutureBuilder(
          future: futureAlbum,
          builder: (context, AsyncSnapshot? snapshot){
            var data = Text("datra");
            if (snapshot!.hasData) {
              user data =  snapshot?.data[0];

             // m1 = snapshot?.data;
              //print(m1.runtimeType);
              //print(snapshot?.data);  
              //print(user.fromJson(jsonDecode(snapshot?.data)));
              return Text(data.userId.toString());
            }
            return data;
          }

      )
    );
     


  
  }
}
