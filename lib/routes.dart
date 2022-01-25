import 'package:flutter/material.dart';
import 'package:test1/page/first.dart';
import 'package:test1/page/loginInsert.dart';
import 'package:test1/page/scan.dart';
import 'package:test1/page/sec.dart';
import 'package:test1/page/logincheck.dart';

final routes = {
  '/' : (BuildContext context) => LoginCheck(),
  '/login': (BuildContext context) => LoginInsert(),
  '/first' : (BuildContext context) => First(),
  '/sec' : (BuildContext context) => Sec(),
  '/scan' : (BuildContext context) => Scan()
};