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
  CameraFacing _cameraFace = CameraFacing.front;

  String get inputData => _inputData;

  String? get phone => _phone;

  Barcode? get barcode => _barcode;

  QRViewController? get controller => _controller;

  bool get scanAble => _scanAble;

  CameraFacing get cameraFace => _cameraFace;

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
          await testApi(event);
          notifyListeners();
          _controller?.resumeCamera();

          Timer(Duration(seconds: 3), () {
            _barcode = null;
            _scanAble = true;
            notifyListeners();
          });
        });
      } catch (e) {
        print(e);
        _barcode = null;
        _scanAble = true;
        notifyListeners();
      }
    });
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
