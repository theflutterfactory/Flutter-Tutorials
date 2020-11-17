import 'package:CWCFlutter/side_drawer.dart';
import 'package:CWCFlutter/tabs/bottom/about.dart';
import 'package:CWCFlutter/tabs/bottom/info.dart';
import 'package:CWCFlutter/tabs/bottom/welcome.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Cheetah Coding'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Welcome',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Info',
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: 'About',
                  icon: Icon(Icons.fastfood),
                ),
              ],
            ),
          ),
          drawer: SideDrawer(),
          body: TabBarView(
            children: [
              Welcome(),
              Info(),
              About(),
            ],
          )),
    );
  }
}
