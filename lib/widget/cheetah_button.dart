import 'package:flutter/material.dart';

class CheetahButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  CheetahButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 18)),
      color: Colors.black,
      textColor: Colors.white,
      splashColor: Colors.orange,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.white70,
    );
  }
}
