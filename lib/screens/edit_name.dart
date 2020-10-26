import 'package:CWCFlutter/widget/rounded_input.dart';
import 'package:flutter/material.dart';

class EditName extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("EditName screen building...");
    return Scaffold(
      appBar: AppBar(title: Text("Test Name Edit")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Name",
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 16),
            RoundedInput(
              hintText: "Restauarant Name",
              onSubmit: (value) => print(value),
            )
          ],
        ),
      ),
    );
  }
}
