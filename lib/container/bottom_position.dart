import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:provider/provider.dart';
import 'package:test1/store/count.dart';

class BottomPostion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("sec build");
    return Consumer<Count>(builder: (context, provider, child) {
      return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24,
        ),
        child: Text(provider.barcode != null ? 'Resoult : ${provider.barcode?.code}' : '스캔해주세요'),
      );
    });
  }
}
