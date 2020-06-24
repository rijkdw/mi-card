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
                  radius: 53,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                ),
                Text(
                  'Rijk de Wet',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal[100],
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: 30,
                  child: Divider(
                    color: Colors.white,
                    thickness: 3,
                    indent: 80,
                    endIndent: 80,
                  ),
                ),
                DetailCard(
                  text: '076 139 8409',
                  iconData: Icons.phone,
                  onPressed: () => print('phone pressed'),
                ),
                DetailCard(
                  text: 'rijkdw1@gmail.com',
                  iconData: Icons.email,
                  onPressed: () => print('email pressed'),
                ),
                DetailCard(
                  text: 'github.com/rijkdw',
                  iconData: Icons.web,
                  onPressed: () => print('website pressed'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailCard extends StatelessWidget {

  final String text;
  final IconData iconData;
  final VoidCallback onPressed;

  DetailCard({this.text, this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          this.iconData,
          color: Colors.teal,
        ),
        title: Text(
          this.text,
          style: TextStyle(
            color: Colors.teal[800],
            fontFamily: 'Source Sans Pro',
            fontSize: 20,
          ),
        ),
        onTap: () => this.onPressed(),
      ),
    );
  }
}

