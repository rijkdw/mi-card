import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

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
              colors: [
                Colors.green[900],
                Colors.green[400],
              ],
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
                SizedBox(
                  height: 10,
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
                    color: Colors.green[100],
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  child: Divider(
                    color: Colors.white,
                    thickness: 3,
                    indent: 25,
                    endIndent: 25,
                  ),
                ),
                DetailCard(
                  text: '076 139 8409',
                  iconData: Icons.phone,
                  onPressed: () => launch('tel:0761398409'),
                ),
                DetailCard(
                  text: 'rijkdw1@gmail.com',
                  iconData: Icons.email,
                  onPressed: () => launch('mailto:rijkdw1@gmail.com'),
                ),
                DetailCard(
                  text: 'github.com/rijkdw',
                  iconData: Icons.web,
                  onPressed: () => launch('https://github.com/rijkdw'),
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
          color: Colors.green[700],
          size: 25,
        ),
        title: Text(
          this.text,
          style: TextStyle(
            color: Colors.green[800],
            fontFamily: 'Source Sans Pro',
            fontSize: 20,
          ),
        ),
        onTap: () => this.onPressed(),
      ),
    );
  }
}
