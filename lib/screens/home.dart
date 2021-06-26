import 'package:CWCFlutter/controller/language_controller.dart';
import 'package:CWCFlutter/screens/languages.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.watch<LanguageController>();

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title: Text('Easy Localizations'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Cheetah Coding',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 24),
              Text(
                'home_description'.tr(),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 24),
              CheetahButton(
                text: 'home_btn_text'.tr(),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Languages(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
