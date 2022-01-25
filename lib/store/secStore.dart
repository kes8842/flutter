import 'package:flutter/material.dart';

class SecStore extends ChangeNotifier {
  String? _phone = '1';
  String _inputData = '2';

  String get inputData => _inputData;

  String? get phone => _phone;

  void test() {
    _phone = "${phone}${phone}";
    notifyListeners();
  }
}
