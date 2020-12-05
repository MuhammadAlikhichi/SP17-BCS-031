import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';
import 'option.dart';
import 'home.dart';

choice correct = choice();

class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  int rold = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Hard Level"),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(),
              height: 200,
              width: 200,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rold = Random().nextInt(5) + 1;
                    correct.get_correct(rold);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => choice()));
                  });
                },
                child: Image(image: AssetImage('image/dice$rold.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child:RaisedButton(
                  child: Text('Go Home'),
                  color: Colors.cyan,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
                    );
                  }

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RaisedButton(
                child: Text('Exit'),
                color: Colors.cyan ,
                onPressed: () {
                  exit(0);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
