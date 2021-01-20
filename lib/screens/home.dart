import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cheetah Coding')),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              SizedBox(height: 24),
              Text(
                'Easy Language Translations',
                style: TextStyle(fontSize: 36, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'This text will automatically be translated into the appropriate language',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 24),
              FlatButton(
                child: Text(
                  "Change language",
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () => {},
              ),
              SizedBox(height: 24),
              FlatButton(
                child: Text(
                  "Go to Test",
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () => Navigator.pushNamed(context, 'test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
