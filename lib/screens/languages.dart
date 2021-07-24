import 'package:CWCFlutter/controller/language_controller.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LanguageController controller = context.read<LanguageController>();

    return Scaffold(
      appBar: AppBar(title: Text("Languages")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Text(
                'Choose your language',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'languages_btn_english'.tr(),
                onPressed: () {
                  context.locale = Locale('en', 'US');
                  controller.onLanguageChanged();
                },
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'languages_btn_portuguese'.tr(),
                onPressed: () {
                  context.locale = Locale('pt', 'BR');
                  controller.onLanguageChanged();
                },
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'languages_btn_hindi'.tr(),
                onPressed: () {
                  context.locale = Locale('hi', 'IN');
                  controller.onLanguageChanged();
                },
              ),
              SizedBox(height: 32),
              CheetahButton(
                text: 'languages_btn_vietnamese'.tr(),
                onPressed: () {
                  context.locale = Locale('vi', 'VN');
                  controller.onLanguageChanged();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
