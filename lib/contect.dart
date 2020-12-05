
import 'dart:io';

import 'drawer.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyContact());

class MyContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.cyan, title: Text('Contact Us', style: TextStyle(color: Colors.white),),),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('I am Muhammad Ali', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),),
          SizedBox(height: 30.0),
          Text("Rg#: SP17-BCS-031",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),),
          SizedBox( height: 30.0),
          Text("I am a student",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
          SizedBox( height: 40.0),

//          Padding(
//            padding: const EdgeInsets.only(top: 10),
//            child: RaisedButton(onPressed: HomeScreen, color: Colors.cyan,
//              child: Text('Go Home'),
//            ),
//          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RaisedButton(
              onPressed:(){ exit(0);}, color: Colors.cyan,
              child: Text('Exit'),
            ),
          ),
        ],
      ),
    );
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
    });
  }
}


