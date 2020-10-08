import 'package:CWCFlutter/widget/rounded_input.dart';
import 'package:flutter/material.dart';

class AddReviews extends StatelessWidget {
  const AddReviews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Reviews")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            RoundedInput(
              hintText: "Review",
              onSubmit: (value) => print(value),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Reviews ${(index + 1)}"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
