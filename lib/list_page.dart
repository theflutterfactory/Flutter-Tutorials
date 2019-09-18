import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Test'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
