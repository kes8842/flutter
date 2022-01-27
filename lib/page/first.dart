import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test1/store/count.dart';
import 'package:provider/provider.dart';
import 'package:app_settings/app_settings.dart';
import 'package:test1/store/login.dart';
import '../store/secStore.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await SystemNavigator.pop();
        return false;
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('스캐너'),
          ),
          body: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              child: Consumer2<Count, Login>(
                  builder: (cont, provider, provider2, child) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 340,
                              margin: EdgeInsets.fromLTRB(10, 3, 0, 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 170,
                                      height: 60,
                                      margin: EdgeInsets.fromLTRB(20, 3, 20, 3),
                                      child: ElevatedButton(
                                        child: Text('로그아웃'),
                                        onPressed: () async {
                                          await provider2.deleteId();
                                          Navigator.pushNamed(context, '/');
                                        },
                                      )),
                                  Container(
                                      width: 170,
                                      height: 60,
                                      margin: EdgeInsets.fromLTRB(20, 3, 20, 3),
                                      child: ElevatedButton(
                                        child: Text('QR코드'),
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/sec');
                                        },
                                      )),
                                  Container(
                                      width: 170,
                                      height: 60,
                                      margin:
                                          EdgeInsets.fromLTRB(20, 20, 20, 3),
                                      child: ElevatedButton(
                                        child: Text("QR스캔"),
                                        onPressed: () async {
                                          if (!await provider.getStatuses()) {
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext ctx) {
                                                  return AlertDialog(
                                                    content: const Text(
                                                        "권한 허용이 필요합니다"),
                                                    actions: [
                                                      FlatButton(
                                                          onPressed: () {
                                                            AppSettings
                                                                .openAppSettings();
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text("예")),
                                                      FlatButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: const Text(
                                                              "아니요")),
                                                    ],
                                                  );
                                                });
                                          } else {
                                            Navigator.pushNamed(
                                                context, '/scan');
                                          }
                                        },
                                      )),
                                ],
                              ),
                            )
                          ]),
                    ],
                  ),
                );
              })),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [Text('스캔을 골라주세요')],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
