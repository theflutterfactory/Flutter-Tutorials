import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider Test'),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) => Text('Placeholder'),
                  itemCount: 1,
                ),
              ),
              SizedBox(height: 100),
              RaisedButton(
                child: Text(
                  'Button 1',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () => {},
              ),
              RaisedButton(
                child: Text(
                  'Button 2',
                  style: TextStyle(color: Colors.purple, fontSize: 16),
                ),
                onPressed: () => {},
              ),
            ],
          ),
        ));
  }
}
