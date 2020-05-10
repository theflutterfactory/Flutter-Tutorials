import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontScreen extends StatefulWidget {
  @override
  FontScreenState createState() => FontScreenState();
}

class FontScreenState extends State<FontScreen> {
  String font = 'Arapey';

  List<String> fonts = ['Arvo', 'Prata', 'Orbitron', 'Monoton', 'Ultra'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fonts')),
      body: Container(
        padding: EdgeInsets.all(48),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Google Fonts',
                style: GoogleFonts.getFont(font, fontSize: 48),
              ),
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(),
                itemCount: fonts.length,
                itemBuilder: (context, index) {
                  return FlatButton(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      fonts[index],
                      style: GoogleFonts.getFont(fonts[index], fontSize: 32, color: Colors.white),
                    ),
                    onPressed: () => setState(() {
                      font = fonts[index];
                    }),
                    color: Colors.black,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
