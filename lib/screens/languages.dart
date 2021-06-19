import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Languages")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheetahButton(
                text: 'English',
                onPressed: () => {},
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'Spanish',
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
