import 'package:CWCFlutter/controller/framework_controller.dart';
import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(FrameworkController());
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFFe67e00)),
      ),
      home: Home(),
    );
  }
}
