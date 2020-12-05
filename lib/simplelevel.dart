import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'drawer.dart';
import 'home.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(simplemode());
}

class simplemode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red[700],
          appBar: AppBar(
            shadowColor: Colors.pink,
            backgroundColor: Colors.redAccent[700],
            centerTitle: true,
            title: Text(
              'Dice Role',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          body: Dicepage(),
        ),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var imageArray = [
    'dice1.png',
    'dice2.png',
    'dice3.png',
    'dice4.png',
    'dice5.png',
    'dice6.png'
  ];
//var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            'Simple Level',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
        ),
        drawer: Drawer(
           child: MainDrawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Text(
                  'Sum of Dice = ' +
                      (randomIntForDiceOne + randomIntForDiceTwo + 2)
                          .toString(),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'image/' + imageArray[randomIntForDiceOne],
                    height: 150,
                    width: 150,
                  ),
                  Image.asset(
                    'image/' + imageArray[randomIntForDiceTwo],
                    height: 150,
                    width: 150,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RaisedButton(
                  child: Text('Dice Result'),
                  color: Colors.cyan ,
                  onPressed: () {
                    showAlertDialog(context);
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RaisedButton(
                  color: Colors.cyan ,
                  onPressed: changeImage,
                  child: Text('Roll Dice'),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10),
              //   //child: RaisedButton(onPressed: MainMenu,
              //     child: Text('Exit Game'),
              //   ),
              // ),
              //
              // Padding(
              //   padding: const EdgeInsets.only(top: 10),
              //   child: RaisedButton(onPressed: HomeScreen,
              //     child: Text('Go Home'),
              //   ),
              // ),
            ],
          ),
        ));
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }

  showAlertDialog(BuildContext context) {
    if (randomIntForDiceOne >= randomIntForDiceTwo) {
      AlertDialog alert = AlertDialog(
//        title: Text(
//          "Winner Dice :",
//          style: TextStyle(
//              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.cyan),
//        ),
        content: Text(
          "Winner Dice A ",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.cyan),
        ),
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
    if (randomIntForDiceOne < randomIntForDiceTwo) {
      AlertDialog alert = AlertDialog(
//        title: Text(
//          "Winner Dice :",
//          style: TextStyle(
//              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),
//        ),
        content: Text(
          "Winner Dice B ",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.cyan),
        ),
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }
}
