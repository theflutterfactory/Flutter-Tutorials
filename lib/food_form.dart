import 'package:CWCFlutter/model/food.dart';
import 'package:flutter/material.dart';

class FoodForm extends StatefulWidget {
  final Food food;
  final int foodIndex;

  FoodForm({this.food, this.foodIndex});

  @override
  State<StatefulWidget> createState() {
    return FoodFormState();
  }
}

class FoodFormState extends State<FoodForm> {
  String _name;
  String _calories;
  bool _isVegan = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      initialValue: _name,
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 15,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildCalories() {
    return TextFormField(
      initialValue: _calories,
      decoration: InputDecoration(labelText: 'Calories'),
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Calories must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _calories = value;
      },
    );
  }

  Widget _buildIsVegan() {
    return SwitchListTile(
      title: Text("Vegan?", style: TextStyle(fontSize: 20)),
      value: _isVegan,
      onChanged: (bool newValue) => setState(() {
        _isVegan = newValue;
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.food != null) {
      _name = widget.food.name;
      _calories = widget.food.calories;
      _isVegan = widget.food.isVegan;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food Form")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildCalories(),
              SizedBox(height: 16),
              _buildIsVegan(),
              SizedBox(height: 20),
              widget.food == null
                  ? RaisedButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();

                        Navigator.pop(context);
                      },
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: Text(
                            "Update",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                              print("form");
                              return;
                            }

                            _formKey.currentState.save();

                            Navigator.pop(context);
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
