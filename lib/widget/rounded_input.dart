import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final Function(String) onSubmit;

  const RoundedInput({
    @required this.hintText,
    @required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onSubmitted: onSubmit,
    );
  }
}
