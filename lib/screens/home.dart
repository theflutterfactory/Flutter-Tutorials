import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Coding with Curry',
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'This is the master branch. As you can see, there is not a lot here. Each branch relates to a specific Flutter topic discussed in the videos. Happy browsing!',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
