import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Feed",
        ),
        actions: <Widget>[
          // action button
          FlatButton(
            onPressed: () {},
            child: Text(
              "Logout",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Feed",
          style: TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
