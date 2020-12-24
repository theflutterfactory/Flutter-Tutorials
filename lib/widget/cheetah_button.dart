import 'package:flutter/material.dart';

class CheetahButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  CheetahButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(text),
      color: Colors.black,
      textColor: Colors.white,
      splashColor: Colors.orange,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.white70,
    );
  }
}
