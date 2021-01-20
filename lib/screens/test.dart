import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbar2'.tr)),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            "test_text".tr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
