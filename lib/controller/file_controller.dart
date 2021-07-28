import 'dart:typed_data';

import 'package:CWCFlutter/file_manager.dart';
import 'package:CWCFlutter/model/user.dart';
import 'package:flutter/material.dart';

class FileController extends ChangeNotifier {
  String _text = '';
  User _user;
  Uint8List _imageByteList;

  String get text => _text;
  User get user => _user;
  Uint8List get imageByteList => _imageByteList;

  readText() async {
    _text = await FileManager().readTextFile();
    notifyListeners();
  }

  writeText() async {
    _text = await FileManager().writeTextFile();
    notifyListeners();
  }

  readUser() async {
    final result = await FileManager().readJsonFile();

    if (result != null) {
      _user = User.fromJson(await FileManager().readJsonFile());
    }

    notifyListeners();
  }

  writeUser() async {
    _user = await FileManager().writeJsonFile();
    notifyListeners();
  }

  readImage() async {
    _imageByteList = await FileManager().readImageFile();
    notifyListeners();
  }

  writeImage() async {
    _imageByteList = await FileManager().writeImageFile();
    notifyListeners();
  }

  deleteImage() async {
    FileManager().deleteImage();
    _imageByteList = null;
    notifyListeners();
  }
}
