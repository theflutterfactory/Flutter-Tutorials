import 'package:CWCFlutter/widget/card_info.dart';
import 'package:CWCFlutter/widget/side_drawer.dart';
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
      backgroundColor: Color(0xff470000),
      appBar: AppBar(title: Text(widget.title)),
      drawer: SideDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InfoCard(
                title: "General",
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Pizza Shack",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Followers: 0",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 4),
                    Text("Open",
                        style: TextStyle(color: Colors.green, fontSize: 18)),
                  ],
                ),
              ),
              InfoCard(
                title: "Followers",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      child: Text(
                        "John",
                        style: TextStyle(fontSize: 16),
                      ),
                      padding: EdgeInsets.all(8),
                    );
                  },
                ),
              ),
              InfoCard(
                title: "Reviews",
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      child: Text(
                        "Good",
                        style: TextStyle(fontSize: 16),
                      ),
                      padding: EdgeInsets.all(8),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
