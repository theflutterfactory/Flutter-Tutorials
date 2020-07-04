import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'These bottom tabs...',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
