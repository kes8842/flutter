import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:test1/container/bottom_position.dart';
import '../store/count.dart';

class Scan extends StatelessWidget {
  final qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    final _count = Provider.of<Count>(context, listen: false);
    QRViewController? ct = _count.controller;

    return Consumer<Count>(builder: (context, provider, child) {
      return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            QRView(
              key: qrKey,
              cameraFacing: CameraFacing.front,
              onQRViewCreated: (controller) {
                provider.setController(controller);
              },
              overlay: QrScannerOverlayShape(borderLength: 20),
            ),
            Positioned(bottom: 50, child: BottomPostion()),
          ],
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 50,
          color: Colors.blue,
          child: ElevatedButton(
            onPressed: () {
              provider.controller?.flipCamera();
            },
            child: Text('카메라전환'),
          ),
        ),
      );
    });
  }
}
