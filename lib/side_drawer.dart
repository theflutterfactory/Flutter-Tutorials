import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text('test@gmail.com'),
                accountName: Text('Julian Currie'),
                otherAccountsPictures: [Icon(Icons.home), Icon(Icons.ac_unit)],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i7.pngguru.com/preview/633/903/703/hey-you-pikachu-pokemon-go-ash-ketchum-pikachu.jpg'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
                ),
              ),
              ListTile(
                title: Text('Videos'),
                leading: Icon(Icons.personal_video),
                onTap: () => Navigator.pushNamed(
                  context,
                  'videos',
                ),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(
                  context,
                  'settings',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
