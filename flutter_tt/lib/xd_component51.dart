import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDComponent51 extends StatelessWidget {
  XDComponent51({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
            ),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.048),
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
        Align(
          alignment: Alignment(-0.509, 0.04),
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.487, 0.029),
          child: SizedBox(
            width: 10.0,
            height: 10.0,
            child: SvgPicture.string(
              _svg_dv2z,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.487, 0.029),
          child: SizedBox(
            width: 10.0,
            height: 10.0,
            child: SvgPicture.string(
              _svg_jd01v,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_dv2z =
    '<svg viewBox="61.0 18.0 10.0 10.0" ><path transform="translate(61.0, 18.0)" d="M 0 0 L 10 10" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jd01v =
    '<svg viewBox="61.0 18.0 10.0 10.0" ><path transform="translate(61.0, 18.0)" d="M 10 0 L 0 10" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
