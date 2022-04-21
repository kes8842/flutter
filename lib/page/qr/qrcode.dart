import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Qrcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        image: AssetImage('assets/images/documents.png'),
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(4.0, 4.0, 3.4, 3.4),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(startFraction: 0.0, endFraction: 0.0),
                              Pin(startFraction: 0.0, endFraction: 0.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/1.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                                        allowDrawingOutsideViewBox: true,
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
                  child: const Text(
                    '김철수',
                    style: TextStyle(
                      fontFamily: 'Apple SD Gothic Neo',
                      fontSize: 24,
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
                              image: AssetImage('assets/images/1.png'),
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
                                  Radius.elliptical(9999.0, 9999.0)),
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
      ),
    );
  }
}

const String _svg_w9e6my =
    '<svg viewBox="0.3 138.8 1.0 1.0" ><path transform="translate(-156.71, -863.01)" d="M 157 1001.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t2jbnm =
    '<svg viewBox="0.3 67.4 1.0 1.0" ><path transform="translate(-156.71, -592.41)" d="M 157 659.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_th9e96 =
    '<svg viewBox="168.8 67.4 1.0 1.0" ><path transform="translate(-795.25, -592.41)" d="M 964 659.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_aedlkg =
    '<svg viewBox="187.6 138.8 1.0 1.0" ><path transform="translate(-866.85, -863.01)" d="M 1054.5 1001.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iutnu =
    '<svg viewBox="168.8 138.8 1.0 1.0" ><path transform="translate(-795.25, -863.01)" d="M 964 1001.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_oqtrrq =
    '<svg viewBox="6.6 138.8 1.0 1.0" ><path transform="translate(-180.45, -863.01)" d="M 187 1001.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vt1jh4 =
    '<svg viewBox="6.6 67.4 1.0 1.0" ><path transform="translate(-180.45, -592.41)" d="M 187 659.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ag00b =
    '<svg viewBox="162.5 67.4 1.0 1.0" ><path transform="translate(-771.51, -592.41)" d="M 934 659.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_upycx =
    '<svg viewBox="162.5 138.8 1.0 1.0" ><path transform="translate(-771.51, -863.01)" d="M 934 1001.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kmcu6 =
    '<svg viewBox="165.0 138.6 3.5 1.0" ><path transform="translate(164.98, 138.59)" d="M 0 0 L 3.485537528991699 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_f3zq9c =
    '<svg viewBox="165.0 67.7 3.5 1.0" ><path transform="translate(164.98, 67.72)" d="M 3.485537528991699 0 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jqng1e =
    '<svg viewBox="0.0 138.6 2.3 1.0" ><path transform="translate(0.0, 138.59)" d="M 0 0 L 2.323691844940186 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tdygda =
    '<svg viewBox="0.0 67.7 2.3 1.0" ><path transform="translate(0.0, 67.72)" d="M 2.323691844940186 0 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_z9qdvm =
    '<svg viewBox="2.3 138.6 4.6 1.0" ><path transform="translate(2.32, 138.59)" d="M 0 0 L 4.647383689880371 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nui42 =
    '<svg viewBox="2.3 67.7 4.6 1.0" ><path transform="translate(2.32, 67.72)" d="M 4.647383689880371 0 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tmzz6d =
    '<svg viewBox="162.7 67.7 2.3 1.0" ><path transform="translate(162.66, 67.72)" d="M 2.323691844940186 0 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dlfhfr =
    '<svg viewBox="162.7 138.6 2.3 1.0" ><path transform="translate(162.66, 138.59)" d="M 0 0 L 2.323691844940186 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yl0f3n =
    '<svg viewBox="48.8 18.9 1.0 1.0" ><path transform="translate(-340.67, -408.44)" d="M 389.5 427.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_sex8gk =
    '<svg viewBox="48.8 0.0 1.0 1.0" ><path transform="translate(-340.67, -336.83)" d="M 389.5 336.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t2halo =
    '<svg viewBox="120.2 0.0 1.0 1.0" ><path transform="translate(-611.28, -336.83)" d="M 731.5 336.8330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o2d8p7 =
    '<svg viewBox="120.2 18.9 1.0 1.0" ><path transform="translate(-611.28, -408.44)" d="M 731.5 427.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_au1adc =
    '<svg viewBox="120.2 187.4 1.0 1.0" ><path transform="translate(-611.28, -1046.98)" d="M 731.5 1234.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_umn0ua =
    '<svg viewBox="48.8 187.4 1.0 1.0" ><path transform="translate(-340.67, -1046.98)" d="M 389.5 1234.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_orkrtc =
    '<svg viewBox="120.2 181.1 1.0 1.0" ><path transform="translate(-611.28, -1023.24)" d="M 731.5 1204.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qgxjou =
    '<svg viewBox="48.8 181.1 1.0 1.0" ><path transform="translate(-340.67, -1023.24)" d="M 389.5 1204.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x1wrp9 =
    '<svg viewBox="120.2 25.2 1.0 1.0" ><path transform="translate(-611.28, -432.18)" d="M 731.5 457.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ko6diz =
    '<svg viewBox="48.8 25.2 1.0 1.0" ><path transform="translate(-340.67, -432.18)" d="M 389.5 457.3330078125" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vfcp0n =
    '<svg viewBox="48.8 18.9 1.0 3.1" ><path transform="translate(48.83, 18.89)" d="M 0 0 L 0 3.131340503692627" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tf9bk0 =
    '<svg viewBox="120.2 18.9 1.0 3.1" ><path transform="translate(120.22, 18.89)" d="M 0 3.131340503692627 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_htmvd8 =
    '<svg viewBox="120.2 184.2 1.0 3.1" ><path transform="translate(120.22, 184.23)" d="M 0 3.131391525268555 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_z728y5 =
    '<svg viewBox="48.8 184.2 1.0 3.1" ><path transform="translate(48.83, 184.23)" d="M 0 0 L 0 3.131391525268555" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ezgx9n =
    '<svg viewBox="120.2 181.1 1.0 3.1" ><path transform="translate(120.22, 181.09)" d="M 0 3.131238222122192 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vcd3d6 =
    '<svg viewBox="48.8 181.1 1.0 3.1" ><path transform="translate(48.83, 181.09)" d="M 0 0 L 0 3.131238222122192" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_j5uvko =
    '<svg viewBox="48.8 22.0 1.0 3.1" ><path transform="translate(48.83, 22.02)" d="M 0 0 L 0 3.13128924369812" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_sdel6v =
    '<svg viewBox="120.2 22.0 1.0 3.1" ><path transform="translate(120.22, 22.02)" d="M 0 3.13128924369812 L 0 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
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
