import 'package:CWCFlutter/food_list.dart';
import 'package:CWCFlutter/food_list_screen.dart';
import 'package:flutter/material.dart';

class FoodForm extends StatefulWidget {
  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
  String _foodname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coding with Curry')),
      body: Container(
        padding: EdgeInsets.all(36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bloc Tutorial',
                style: TextStyle(fontSize: 42),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Food'),
                style: TextStyle(fontSize: 22),
                onChanged: (text) {
                  setState(() {
                    _foodname = text;
                  });
                },
              ),
              FoodList(),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(heroTag: 'button1', child: Icon(Icons.save), onPressed: () => {}),
          SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'button2',
            child: Icon(Icons.navigate_next),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FoodListScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
