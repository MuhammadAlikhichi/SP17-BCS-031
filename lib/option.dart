import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'home.dart';

int correct = 1;
int t = 0;
int f = 0;
int count = 1;

class choice extends StatefulWidget {
  void get_correct(int a) {
    correct = a;
  }

  @override
  _gussState createState() => _gussState();
}

class _gussState extends State<choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Options"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'Chose Image ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: setimage(3),
                  onPressed: () {
                    showAlertDialog(context, 3);
                  },
                ),
                FlatButton(
                  child: setimage(4),
                  onPressed: () {
                    showAlertDialog(context, 4);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: setimage(5),
                  onPressed: () {
                    showAlertDialog(context, 5);
                  },
                ),
                FlatButton(
                  child: setimage(6),
                  onPressed: () {
                    showAlertDialog(context, 6);
                  },
                ),
              ],
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

  showAlertDialog(BuildContext context, int a) {
    if (count >= 5) {
      if (t > f) {
        AlertDialog alert = AlertDialog(
          title: Text(
            " Won The Game",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      } else {
        AlertDialog alert = AlertDialog(
          title: Text(
            " Loss The Game ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }
      setState(() {
        count = 1;
        t = 0;
        f = 0;
        Timer(
            Duration(seconds: 1),
                () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage())));
      });
    } else {
      count++;
      if (correct == a) {
        t++;
        AlertDialog alert = AlertDialog(
          title: Text(
            "Your's Choice is Right",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        setState(() {
          Timer(
              Duration(seconds: 1),
                  () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homepage())));
        });
      } else {
        f++;
        AlertDialog alert = AlertDialog(
          title: Text(
            " You's Choice is Wrong ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan),
          ),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        setState(() {
          Timer(
              Duration(seconds: 1),
                  () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homepage())));
        });
      }
    }
  }


  Widget setimage(int d) {
    return Image(
      height: 50,
      width: 50,
      image: AssetImage('image/dice$d.png'),
    );
  }
}
