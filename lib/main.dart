import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.teal, Colors.teal[300]],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // to force it to middle
                Container(
                  width: double.infinity,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                Text(
                  'Rijk de Wet',
                  style: TextStyle(fontSize: 35, color: Colors.white, fontFamily: 'Yeseva One'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
