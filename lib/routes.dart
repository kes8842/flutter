import 'package:flutter/material.dart';
import 'package:test1/page/first.dart';
import 'package:test1/page/auth/loginInsert.dart';
import 'package:test1/page/qr/qrcode.dart';
import 'package:test1/page/scan.dart';
import 'package:test1/page/sec.dart';
import 'package:test1/page/auth/logincheck.dart';

final routes = {
  '/' : (BuildContext context) => LoginCheck(),
  '/login': (BuildContext context) => LoginInsert(),
  '/first' : (BuildContext context) => First(),
  '/sec' : (BuildContext context) => Sec(),
  '/scan' : (BuildContext context) => Scan(),
  '/qr' : (BuildContext context) => Qrcode()
};