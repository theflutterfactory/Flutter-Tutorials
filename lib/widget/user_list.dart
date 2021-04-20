import 'package:CWCFlutter/controller/providers.dart';
import 'package:CWCFlutter/controller/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("UserList rebuilding...");

    return Consumer(
      builder: (context, watch, child) {
        final userList = watch(userListProvider);

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
                        'Name: ${userList[index].name}',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'City: ${userList[index].city}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      UserListController controller =
                          context.read(userListProvider.notifier);
                      controller.deleteUser(userList[index]);
                    },
                  )
                ],
              ),
            ),
          ),
          itemCount: userList.length,
        );
      },
    );
  }
}
