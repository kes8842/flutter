import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../store/login.dart';

class LoginInsert extends StatelessWidget {
  TextStyle textStyle() {
    return const TextStyle(height: 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Login>(builder: (context, provider, child) {
      final loginStore = Provider.of<Login>(context, listen: false);
      return MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                padding: const EdgeInsets.only(left: 30, right: 50),
                child: TextField(
                  style: textStyle(),
                  decoration: const InputDecoration(
                    labelText: 'ID 입력',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    loginStore.setLoginInfo(
                        {...provider.loginInfo, 'memberId': text});
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                padding: const EdgeInsets.only(left: 30, right: 50),
                child: TextField(
                  style: textStyle(),
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'PW 입력',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    loginStore.setPw(text);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                padding: const EdgeInsets.only(left: 30, right: 50),
                child: TextField(
                  style: textStyle(),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    labelText: '핸드폰 입력',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    loginStore
                        .setLoginInfo({...provider.loginInfo, 'phone': text});
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      loginStore.setLogin();
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/first', (route) => false);
                    },
                    child: Text('로그인')),
              ),
            ]),
          ),
        ),
      ));
    });
  }
}
