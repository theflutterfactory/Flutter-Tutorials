import 'package:CWCFlutter/controller/framework_controller.dart';
import 'package:CWCFlutter/screens/framework_form.dart';
import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(FrameworkController());
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FrameworkController controller = FrameworkController.to;

  @override
  void initState() {
    super.initState();
    controller.fetchAllFrameworks();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFFee5f00)),
      ),
      home: Home(),
      routes: {
        'form': (context) => FrameworkForm(),
      },
    );
  }
}
