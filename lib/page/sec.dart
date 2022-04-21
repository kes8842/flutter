import 'dart:convert';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:provider/provider.dart';
import 'package:test1/store/login.dart';
import '../store/count.dart';

class Sec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<Count, Login>(
        builder: (context, provider, loginProvider, child) {
          String? name = loginProvider.loginInfo["memberId"];
          return MaterialApp(
            // home: Scaffold(
            //   body: Container(
            //     width: double.infinity,
            //     alignment: Alignment.center,
            //     constraints: const BoxConstraints.expand(),
            //     decoration: const BoxDecoration(
            //       color: Color.fromARGB(255, 0, 135, 141),
            //     ),
            //     child: SingleChildScrollView(
            //       child: Stack(children: [
            //         Positioned(
            //           child: Container(
            //             width: 327,
            //             height: 507,
            //             decoration: const BoxDecoration(
            //               color: Color.fromARGB(255, 255, 255, 255),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color.fromARGB(106, 0, 0, 0),
            //                   offset: Offset(5, 5),
            //                   blurRadius: 6,
            //                 ),
            //               ],
            //               borderRadius: BorderRadius.all(Radius.circular(20)),
            //             ),
            //           ),
            //         ),
            //         Positioned(
            //           top: 63,
            //           right: 51,
            //           child: QrImage(
            //               data: jsonEncode(loginProvider.loginInfo), size: 220),
            //         ),
            //         Positioned(
            //           top: 35,
            //           right: 24,
            //           child: Image.asset(
            //             "assets/images/2.png",
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ]),
            //     ),
            //   ),
            //   bottomNavigationBar: Container(
            //     width: 0,
            //     height: 0,
            //   ),
            // ),
              home: Scaffold(
                  backgroundColor: const Color(0xff00878d),
                  body: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment(0.0, 0.615),
                        child: SizedBox(
                          width: 230.0,
                          height: 48.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(size: 27.0, start: 0.0),
                                child: const Text(
                                  'QR코드를 스캔 시켜주세요',
                                  style: TextStyle(
                                    fontFamily: 'Apple SD Gothic Neo',
                                    fontSize: 22,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 19.0, end: 25.0),
                                Pin(size: 17.0, end: 0.0),
                                child: const Text(
                                  'QR코드를 영역 안에 위치시키세요',
                                  style: TextStyle(
                                    fontFamily: 'Apple SD Gothic Neo',
                                    fontSize: 14,
                                    color: const Color(0x80ffffff),
                                    fontWeight: FontWeight.w200,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 100.0, end: 0.0),
                        child: Container(
                          color: const Color(0xffffffff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 48.0, middle: 0.2277),
                        Pin(size: 75.0, end: 12.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 17.0, end: 0.0),
                              child: const Text(
                                '비용등록',
                                style: TextStyle(
                                  fontFamily: 'Apple SD Gothic Neo',
                                  fontSize: 14,
                                  color: Color(0xff1d1d1d),
                                  fontWeight: FontWeight.w600,
                                ),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 1.0, end: 0.1),
                              Pin(size: 47.0, start: 0.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage('assets/images/documents.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 48.0, middle: 0.7723),
                        Pin(size: 75.0, end: 12.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 17.0, end: 0.0),
                              child: const Text(
                                '결제하기',
                                style: TextStyle(
                                  fontFamily: 'Apple SD Gothic Neo',
                                  fontSize: 14,
                                  color: const Color(0xff1d1d1d),
                                  fontWeight: FontWeight.w600,
                                ),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 1.0, end: 0.0),
                              Pin(size: 47.0, start: 0.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/hand.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.5026),
                        Pin(size: 68.0, end: 18.5),
                        child: SvgPicture.string(
                          _svg_d7ouw0,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.1794, endFraction: 0.1794),
                        Pin(startFraction: 0.1133, endFraction: 0.293),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x6a000000),
                                    offset: Offset(5, 5),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(startFraction: 0.1274, endFraction: 0.1231),
                              Pin(startFraction: 0.1118, endFraction: 0.4329),
                              child: Stack(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Pinned.fromPins(
                                        Pin(startFraction: 0.0,
                                            endFraction: 0.0),
                                        Pin(startFraction: 0.0,
                                            endFraction: 0.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: QrImage(
                                              data: jsonEncode(
                                                  loginProvider.loginInfo),
                                              size: 150),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              width: 57.0,
                                              height: 57.0,
                                              child: SvgPicture.string(
                                                _svg_n1oa7f,
                                                allowDrawingOutsideViewBox: true,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: SizedBox(
                                              width: 57.0,
                                              height: 57.0,
                                              child: Stack(
                                                children: <Widget>[
                                                  SizedBox.expand(
                                                      child: SvgPicture.string(
                                                        _svg_w1oawj,
                                                        allowDrawingOutsideViewBox:
                                                        true,
                                                        fit: BoxFit.fill,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: SizedBox(
                                              width: 57.0,
                                              height: 57.0,
                                              child: SvgPicture.string(
                                                _svg_ds62w,
                                                allowDrawingOutsideViewBox: true,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              width: 57.0,
                                              height: 57.0,
                                              child: SvgPicture.string(
                                                _svg_ap2rvf,
                                                allowDrawingOutsideViewBox: true,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.3177, endFraction: 0.3156),
                        Pin(startFraction: 0.5085, endFraction: 0.3138),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(startFraction: 0.2652, endFraction: 0.2652),
                              Pin(startFraction: 0.504, endFraction: 0.241),
                              child: Text(
                                name ?? "",
                                style: TextStyle(
                                  fontFamily: 'Apple SD Gothic Neo',
                                  fontSize: 20,
                                  color: const Color(0xff1d1d1d),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(startFraction: 0.0, endFraction: 0.0),
                              Pin(startFraction: 0.8329, endFraction: 0.0),
                              child: const Text(
                                '엘리트그룹 소속 팀장',
                                style: TextStyle(
                                  fontFamily: 'Apple SD Gothic Neo',
                                  fontSize: 16,
                                  color: const Color(0xffbcbcbc),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 43.0,
                                height: 43.0,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(''),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      // margin: EdgeInsets.fromLTRB(-1.5, -0.7, -0.7, -1.5),
                                    ),
                                    Pinned.fromPins(
                                      Pin(startFraction: 0.0, endFraction: 0.0),
                                      Pin(startFraction: 0.0, endFraction: 0.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xff32bea6),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )));
        });
  }
}

const String _svg_d7ouw0 =
    '<svg viewBox="180.4 553.5 1.0 68.0" ><path transform="translate(180.42, 553.5)" d="M 0 0 L 0 68" fill="none" stroke="#bfbfbf" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w1oawj =
    '<svg viewBox="0.0 0.0 56.6 56.6" ><path transform="translate(-318.84, -391.81)" d="M 367.4755859375 440.439453125 L 318.8424072265625 440.439453125 L 318.8424072265625 448.439453125 L 375.4755859375 448.439453125 L 375.4755859375 391.8062133789062 L 367.4755859375 391.8062133789062 L 367.4755859375 440.439453125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_n1oa7f =
    '<svg viewBox="318.8 275.4 56.6 56.6" ><path  d="M 318.8424072265625 275.43994140625 L 318.8424072265625 283.43994140625 L 367.4755859375 283.43994140625 L 367.4755859375 332.0732421875 L 375.4755859375 332.0732421875 L 375.4755859375 275.43994140625 L 318.8424072265625 275.43994140625 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ds62w =
    '<svg viewBox="202.5 275.4 56.6 56.6" ><path  d="M 202.47607421875 332.0732421875 L 210.47607421875 332.0732421875 L 210.47607421875 283.43994140625 L 259.109375 283.43994140625 L 259.109375 275.43994140625 L 202.47607421875 275.43994140625 L 202.47607421875 332.0732421875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ap2rvf =
    '<svg viewBox="202.5 391.8 56.6 56.6" ><path  d="M 210.47607421875 391.8062133789062 L 202.47607421875 391.8062133789062 L 202.47607421875 448.439453125 L 259.109375 448.439453125 L 259.109375 440.439453125 L 210.47607421875 440.439453125 L 210.47607421875 391.8062133789062 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
