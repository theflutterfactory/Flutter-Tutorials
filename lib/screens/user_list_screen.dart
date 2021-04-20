import 'package:CWCFlutter/widget/user_list.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        child: UserList(),
        padding: EdgeInsets.all(8),
      ),
    );
  }
}
