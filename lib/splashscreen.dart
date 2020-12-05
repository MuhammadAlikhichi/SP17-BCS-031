import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/abc.jpeg'),

            ),
            Text(
              'Muhammad Ali',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),

            ),
            Text(
              'SP17-BCS-031',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),

            ),
            SizedBox(
              width: 500.0,
              height: 20.0,
              child: Divider(
                color: Colors.white,
                thickness: 5.0,
              ),

            ),
//            Card(
//              color: Colors.white,
//              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
//              child: ListTile(
//                leading: Icon(
//                  Icons.phone,
//                ),
//
//                title: Text(
//                  '+923059647868',
//                ),
//              ),
//            ),
//            Card(
//              color: Colors.white,
//              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
//              child: ListTile(
//                leading: Icon(
//                  Icons.email,
//                ),
//
//                title: Text(
//                  'muhammadalikhichi031@gmail.com',
//                ),
//              ),
//            ),
          ],
        ),
      ),

    );
  }
}
