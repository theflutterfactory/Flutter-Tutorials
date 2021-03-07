import 'package:CWCFlutter/model/user.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final List<User> users;
  final Function(User) onDelete;

  UserList(this.users, this.onDelete);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Card(
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${users[index].name}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'City: ${users[index].city}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => onDelete(users[index]),
              )
            ],
          ),
        ),
      ),
      itemCount: users.length,
    );
  }
}
