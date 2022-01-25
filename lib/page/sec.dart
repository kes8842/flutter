import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:provider/provider.dart';
import 'package:test1/store/login.dart';
import '../store/count.dart';

class Sec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("sec build");
    return Consumer2<Count, Login>(
        builder: (context, provider, loginProvider, child) {
      return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('QR생성'),
            ),
            body: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.only(top: 20),
                      child: QrImage(data: loginProvider.id, size: 220)),
                ]),
              ),
            )),
      );
    });
  }
}
