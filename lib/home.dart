import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('simple Level'),

            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Hard Level'),

            ),
          ],
        ),
      ),
    );
  }
}

