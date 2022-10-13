import 'package:flutter/material.dart';
import 'package:ninja_trips/shared/imagesList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(backgroundColor: Colors.transparent, actions: <Widget>[
        //   FlatButton.icon(
        //     icon: Icon(Icons.person),
        //     label: Text('logout'),
        //     color: Colors.white,
        //     onPressed: () async {
        //       await _auth.signOut();
        //     },
        //   ),
        // ]),
        appBar: AppBar(
          title: Text('Remove Background'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
            color: Color.fromARGB(255, 82, 105, 52),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height: 50),
                // SizedBox(
                //   height: 160,
                //   child: ScreenTitle(text: 'Remove Background'),
                // ),
                Flexible(
                  child: imagesList(),
                )
              ],
            )));
  }
}
