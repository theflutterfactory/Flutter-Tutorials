import 'package:CWCFlutter/widget/rounded_input.dart';
import 'package:flutter/material.dart';

class AddFollowers extends StatelessWidget {
  const AddFollowers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("AddFollowers screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Test Follower List")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            RoundedInput(
              hintText: "Follower Name",
              onSubmit: (value) => print(value),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Follower ${(index + 1)}"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
