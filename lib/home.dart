import 'package:flutter/material.dart';
import 'model/food.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String _currentName;
  String _currentColor;
  List<Food> _foodList = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(_foodList.length);

    return Scaffold(
      appBar: AppBar(title: Text("Provider Demo")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Food Name'),
                initialValue: null,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Name is required';
                  }

                  return null;
                },
                onSaved: (String value) {
                  _currentName = value;
                  print('Name: $value');
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Food Color'),
                initialValue: null,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Color is required';
                  }

                  return null;
                },
                onSaved: (String value) {
                  _currentColor = value;
                  print('Color: $value');
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) => Column(
                    children: <Widget>[
                      Text(_foodList[index].name),
                      Text(_foodList[index].color),
                      Divider(
                        height: 10,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                      ),
                    ],
                  ),
                  itemCount: _foodList.length,
                ),
              ),
              RaisedButton(
                child: Text(
                  'Add Food',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }
                  _formKey.currentState.save();
                  setState(() {
                    _foodList.add(Food(_currentName, _currentColor));
                  });
                },
              ),
              RaisedButton(
                child: Text(
                  'Test',
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
