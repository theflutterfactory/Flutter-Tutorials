import 'package:flutter/material.dart';

class ToggleStatus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("ToggleStatus screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Test Status Toggle")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Is the restuarant open?",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Switch(
                onChanged: (value) => {},
                activeColor: Colors.purple,
                value: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
