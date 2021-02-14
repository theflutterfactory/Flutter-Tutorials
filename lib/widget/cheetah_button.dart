import 'package:flutter/material.dart';

class CheetahButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  CheetahButton({
    @required this.text,
    @required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(16),
      color: Theme.of(context).primaryColor,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
