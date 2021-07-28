import 'package:CWCFlutter/controller/file_controller.dart';
import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => FileController())],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<FileController>().readText();
    context.read<FileController>().readUser();
    context.read<FileController>().readImage();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.orange[800]),
      ),
      home: Home(),
    );
  }
}
