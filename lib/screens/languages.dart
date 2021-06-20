import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Languages")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select a language. The changes will automatically be applied to all the Text widgets with the .tr extension throughout the app.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'English',
                onPressed: () => {},
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'Portuguese',
                onPressed: () => {},
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'Hindi',
                onPressed: () => {},
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'Vietnamese',
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
