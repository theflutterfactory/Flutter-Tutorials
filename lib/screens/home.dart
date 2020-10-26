import 'package:CWCFlutter/widget/card_info.dart';
import 'package:CWCFlutter/widget/side_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("GetX Tutorial")),
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
