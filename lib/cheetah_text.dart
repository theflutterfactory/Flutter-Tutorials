import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheetahText extends StatelessWidget {
  final String text;

  CheetahText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text.tr),
    );
  }
}
