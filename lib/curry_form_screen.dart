import 'package:flutter/material.dart';

class CurryFormScreen extends StatefulWidget {
  @override
  _CurryFormScreenState createState() => _CurryFormScreenState();
}

class _CurryFormScreenState extends State<CurryFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> _nameList = ['test'];

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }

        return null;
      },
      onSaved: (String value) {
        setState(() {
          _nameList.add(value);
        });
      },
    );
  }

  void _submit() {
    if (!_formKey.currentState.validate()) {
      return;
    }

    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    print(_nameList.toString());

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Add Name', style: TextStyle(fontSize: 22)),
              _buildNameField(),
              SizedBox(height: 16),
              RaisedButton(
                child: Text('Submit'),
                onPressed: _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
