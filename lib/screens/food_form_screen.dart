import 'package:flutter/material.dart';

class FoodFormScreen extends StatefulWidget {
  @override
  _FoodFormScreenState createState() => _FoodFormScreenState();
}

class _FoodFormScreenState extends State<FoodFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Food name is required';
        }

        return null;
      },
      onSaved: (String value) {},
    );
  }

  Widget _buildCategoryField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Category'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Food Category is required';
        }

        return null;
      },
      onSaved: (String value) {},
    );
  }

  void _submitFood() {
    if (!_formKey.currentState.validate()) {
      return;
    }

    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Form'),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Create Food', style: TextStyle(fontSize: 22)),
                _buildNameField(),
                _buildCategoryField(),
                SizedBox(height: 16),
                RaisedButton(
                  child: Text('Submit'),
                  onPressed: _submitFood,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
