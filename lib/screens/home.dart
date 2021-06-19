import 'package:CWCFlutter/screens/languages.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title: Text('Easy Localizations'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Cheetah Coding',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 24),
              Text(
                'It is very easy to switch between languages in Flutter using the Easy Localization library.',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 24),
              CheetahButton(
                text: 'Switch Language',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Languages(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
