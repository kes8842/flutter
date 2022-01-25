import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/login.dart';

class LoginCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginStore = Provider.of<Login>(context, listen: false);
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: FutureBuilder(
        future: loginStore.isLogin(context),
        builder: (BuildContext context, AsyncSnapshot a) {
          return Consumer<Login>(builder: (context, provider, child) {
            return MaterialApp(
              home: Scaffold(
                  appBar: AppBar(
                    title: Text('LOGIN'),
                  ),
                  body: Container(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          height: 40,
                          child: Text('로그인체크중'),
                        ),
                      ]),
                    ),
                  )),
            );
          });
        },
      ),
    );
  }
}
