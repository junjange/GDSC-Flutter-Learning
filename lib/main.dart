import 'package:flutter/material.dart';
import 'package:instagrem_clon/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '김우탄',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      appBar: AppBar(
        title: Text("노원구 녹차밭"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/wootan.png'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text("Name",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2.0, fontSize: 23.0)),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "김우탄",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("Power Level",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2.0, fontSize: 23.0)),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "14LV",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Using lightsaber",
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "face hero tattoo",
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "fire flames",
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            // Center(
            //   child: CircleAvatar(
            //     backgroundImage: AssetImage('assets/ma.png'),
            //     radius: 40.0,

            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
