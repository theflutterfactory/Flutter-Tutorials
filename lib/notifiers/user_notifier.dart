import 'package:flutter/widgets.dart';

class UserNotifier with ChangeNotifier {
  String _userName;
  int _userAge = 0;

  UserNotifier(this._userName);

  String get userName => _userName;
  int get userAge => _userAge;

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

  void incrementAge() {
    _userAge++;
    notifyListeners();
  }
}
