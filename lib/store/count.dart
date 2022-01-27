import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qr_code_scanner/qr_code_scanner.dart';

class Count extends ChangeNotifier {
  String? _phone = '';
  String _inputData = '';
  QRViewController? _controller;
  Barcode? _barcode;
  bool _scanAble = true;

  String get inputData => _inputData;

  String? get phone => _phone;

  Barcode? get barcode => _barcode;

  QRViewController? get controller => _controller;

  bool get scanAble => _scanAble;

  void setController(controller) async {
    _controller = controller;
    _controller?.scannedDataStream.listen((Barcode event) {
      if (!scanAble) {
        return;
      }
      _scanAble = false;
      _controller?.pauseCamera();

      try {
        Timer(Duration(seconds: 1), () async {
          _barcode = event;

          bool callApi = await sendEventData(event.code).catchError((e) {
            print(e);
          });

          _controller?.resumeCamera();
          Timer(Duration(seconds: 3), () {
            _barcode = null;
            _scanAble = true;
            notifyListeners();
          });
        });
      } catch (e) {
        print('catchevnt');
        print(e);
        _barcode = null;
        _scanAble = true;
        notifyListeners();
      }
    });
  }

  Future<bool> sendEventData(String? data) async {
    String memberId = jsonDecode(data!)['phone'];
    print('send start');
    print('----------------------------');
    print(memberId);
    http.Response res = await http.post("http://3.37.212.202:8080/s0221a0020/enter",
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"memberId": memberId}));
    print(res.body);
    print('send end');
    print('----------------------------');
    if(res.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> test() async {
    bool isPerm = await MobileNumber.hasPhonePermission;
    if (!isPerm) {
      await MobileNumber.requestPhonePermission;
      // AppSettings.openAppSettings();
    } else {
      String? abb = await MobileNumber.mobileNumber;
      _phone = abb;
    }
    notifyListeners();
  }

  Future<bool> getStatuses() async {
    Map<Permission, PermissionStatus> statuses =
        await [Permission.storage, Permission.camera].request();
    if (await Permission.camera.isGranted &&
        await Permission.storage.isGranted) {
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  void input(text) {
    _inputData = text;
  }

  void notifyData() {
    notifyListeners();
  }

  void reverseCameraFace() {
    controller?.flipCamera();
    notifyListeners();
  }

  Future<void> testApi(Barcode data) async {
    await http.post(
        'http://ec2-3-37-212-202.ap-northeast-2.compute.amazonaws.com:8080/s0221a0020/post',
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"data": data.code}));
  }
}
