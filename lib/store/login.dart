import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Login extends ChangeNotifier {
  static final storage = new FlutterSecureStorage();

  Map<String, String> _loginInfo = {
    'phone': '',
    'memberId': '',
    'deviceId': ''
  };
  String _password = '';

  Map<String, String> get loginInfo => _loginInfo;

  String get password => _password;

  void setLoginInfo(loginInfo) {
    _loginInfo = {...loginInfo};
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
      if (loginInfo['phone'] == '') {
        setLoginInfo({...loginInfo, 'phone': userInfo});
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
    storage.write(key: 'login', value: loginInfo['phone']);
  }
}
