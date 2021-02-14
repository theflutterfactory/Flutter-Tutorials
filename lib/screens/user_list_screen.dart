import 'package:CWCFlutter/model/user.dart';
import 'package:CWCFlutter/widget/user_list.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  final List<User> users;
  final Function(User) onDelete;

  UserListScreen(this.users, this.onDelete);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  deleteUser(User user) {
    setState(() {
      widget.onDelete(user);
    });
  }

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
        child: UserList(widget.users, deleteUser),
        padding: EdgeInsets.all(8),
      ),
    );
  }
}
