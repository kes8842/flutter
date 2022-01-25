import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Login extends ChangeNotifier {
  static final storage = new FlutterSecureStorage();

  String _id = '';
  String _password = '';

  String get id => _id;

  String get password => _password;

  void setId(id) {
    _id = id;
  }

  void setPw(pw) {
    _password = pw;
    notifyListeners();
  }

  Future<void> deleteId() async {
    await storage.delete(key: 'login');
  }

  Future<bool>? isLogin(context) async {
    String? userInfo = await storage.read(key: 'login');
    if (userInfo != null) {
      if (id == '') {
        setId(userInfo);
      }
      if (context != null) {
        Navigator.pushNamedAndRemoveUntil(context, '/first', (route) => false);
      }
      return Future.value(true);
    } else {
      if (context != null) {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      }
      return Future.value(false);
    }
  }

  Future<void> setLogin() async {
    storage.write(key: 'login', value: id);
  }
}
