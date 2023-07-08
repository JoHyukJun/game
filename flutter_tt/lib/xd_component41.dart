import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDComponent41 extends StatelessWidget {
  XDComponent41({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35.0),
            ),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
        Align(
          alignment: Alignment(0.31, 0.048),
          child: SizedBox(
            width: 80.0,
            height: 24.0,
            child: Text(
              'ABS-892',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 20.0, start: 36.0),
          Pin(size: 20.0, middle: 0.52),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 10.0, start: 41.0),
          Pin(size: 10.0, middle: 0.5143),
          child: SvgPicture.string(
            _svg_ahzwnv,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 10.0, start: 41.0),
          Pin(size: 10.0, middle: 0.5143),
          child: SvgPicture.string(
            _svg_hxz1mr,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_ahzwnv =
    '<svg viewBox="41.0 18.0 10.0 10.0" ><path transform="translate(41.0, 18.0)" d="M 0 0 L 10 10" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hxz1mr =
    '<svg viewBox="41.0 18.0 10.0 10.0" ><path transform="translate(41.0, 18.0)" d="M 10 0 L 0 10" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
