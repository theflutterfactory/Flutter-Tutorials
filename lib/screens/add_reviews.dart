import 'package:CWCFlutter/widget/rounded_input.dart';
import 'package:flutter/material.dart';

class AddReviews extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("AddReviews screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Test Reviews")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            RoundedInput(
              hintText: "Name",
              onSubmit: (value) => print(value),
            ),
            SizedBox(height: 16),
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
