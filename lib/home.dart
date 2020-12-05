import 'dart:io';

import 'package:cardapp/simplelevel.dart';
import 'package:flutter/material.dart';
import 'simplelevel.dart';
import 'contect.dart';
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('simple Level'),
                color: Colors.cyan,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dicepage()),
                  );
                }

            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              
              child: Text('Hard Level'),


            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                child: Text('Exit'),
                color: Colors.cyan,
                onPressed: () {
                 exit(0);
                }

            ),
          ],
        ),
      ),
    );
  }
}

