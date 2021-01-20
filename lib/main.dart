import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:CWCFlutter/screens/test.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'cheetah_translations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: CheetahTranslations(),
      locale: Get.deviceLocale,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.indigo),
      ),
      home: Home(),
      routes: {
        'test': (context) => Test(),
      },
    );
  }
}
