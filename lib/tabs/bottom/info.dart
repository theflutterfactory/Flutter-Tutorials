import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          "Info",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
