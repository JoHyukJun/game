import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_component21.dart';
import './xd_component11.dart';
import './xd_component61.dart';

class XDWeb19201 extends StatelessWidget {
  XDWeb19201({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 458.0,
              height: 673.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 1452.0,
              height: 673.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 720.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.52, -1.0),
            child: Container(
              width: 10.0,
              height: 344.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 458.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1452.0, end: 0.0),
            Pin(size: 299.0, start: 45.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.542, 0.264),
            child: SizedBox(
              width: 426.0,
              height: 273.0,
              child: XDComponent21(),
            ),
          ),
          Align(
            alignment: Alignment(0.329, 0.264),
            child: SizedBox(
              width: 426.0,
              height: 273.0,
              child: XDComponent11(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 452.0, middle: 0.451),
            Pin(size: 302.0, end: 74.0),
            child:
                // Adobe XD layer: '_DSC2174' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/_DSC2174.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 952.0, middle: 0.5083),
            Pin(size: 76.0, start: 71.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 16,
                color: const Color(0xff707070),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 174.0, start: 26.0),
            Pin(size: 19.0, start: 13.0),
            child: Text(
              'dir\\long\\and\\winding\\road',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 16,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 26.5, middle: 0.2149),
            Pin(size: 24.5, start: 10.3),
            child: XDComponent61(),
          ),
        ],
      ),
    );
  }
}
