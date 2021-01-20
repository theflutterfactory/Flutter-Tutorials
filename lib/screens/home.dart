import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:CWCFlutter/cheetah_text.dart';

class Home extends StatelessWidget {
  final locales = [
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'Hindi', 'locale': Locale('hi', 'IN')},
    {'name': 'German', 'locale': Locale('de', 'DE')},
    {'name': 'Vietnamese', 'locale': Locale('vi', 'VN')}
  ];

  showLocaleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Choose your language"),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              child: Padding(
                child: Text(locales[index]['name']),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
              onTap: () => updateLocale(
                locales[index]['locale'],
                context,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
            itemCount: 4,
          ),
        ),
      ),
    );
  }

  updateLocale(Locale locale, BuildContext context) {
    Navigator.of(context).pop();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CheetahText('appbar1')),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              SizedBox(height: 24),
              Text(
                'title'.tr,
                style: TextStyle(fontSize: 36, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'subtitle'.tr,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 24),
              FlatButton(
                child: Text(
                  "button1".tr,
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () => showLocaleDialog(context),
              ),
              SizedBox(height: 24),
              FlatButton(
                child: Text(
                  "button2".tr,
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () => Navigator.pushNamed(context, 'test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
