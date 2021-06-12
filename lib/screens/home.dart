import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cheetah Coding')),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png', height: 200),
              SizedBox(height: 24),
              Text(
                'Master Branch',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
              SizedBox(height: 24),
              Text(
                'As you can see, there is not a lot here. Each branch relates to a specific Flutter topic discussed in the videos. Checkout the other branches and Happy browsing!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
