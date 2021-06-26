import 'package:CWCFlutter/controller/language_controller.dart';
import 'package:CWCFlutter/screens/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageController()),
      ],
      child: EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('hi', 'IN'),
          Locale('pt', 'BR'),
          Locale('vi', 'VN')
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: Locale('en', 'US'),
          theme: ThemeData(
            appBarTheme: AppBarTheme(color: Color(0xFF000000)),
          ),
          home: Home(),
        ),
      ),
    );
  }
}
