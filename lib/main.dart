import 'package:flutter/material.dart';
import 'package:test1/store/count.dart';
import 'package:provider/provider.dart';
import 'package:test1/routes.dart';
import 'package:test1/store/secStore.dart';
import 'package:test1/store/login.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Count(),
    ),
    ChangeNotifierProvider(
      create: (_) => SecStore(),
    ),
    ChangeNotifierProvider(
      create: (_) => Login(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/qr',
      routes: routes,
    );
  }
}
