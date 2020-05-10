import 'package:CWCFlutter/font_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.candalTextTheme().copyWith(
          button: GoogleFonts.allan(),
        ),
      ),
      home: FontScreen(),
    );
  }
}
