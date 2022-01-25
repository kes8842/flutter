import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/login.dart';

class LoginInsert extends StatelessWidget {
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
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 40,
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'ID 입력',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        loginStore.setId(text);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 40,
                    child: TextField(
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
                    margin: EdgeInsets.only(top: 30),
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          loginStore.setLogin();
                          Navigator.pushNamedAndRemoveUntil(context, '/first', (route) => false);
                        },
                        child: Text('로그인')),
                  )
                ]),
              ),
            )),
      );
    });
  }
}
