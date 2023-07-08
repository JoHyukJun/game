import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDComponent61 extends StatelessWidget {
  XDComponent61({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: 9.0,
            height: 8.0,
            child: SvgPicture.string(
              _svg_zdkj3,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_zdkj3 =
    '<svg viewBox="17.5 16.5 9.0 8.0" ><path transform="translate(17.5, 16.5)" d="M 0 0 L 9 8" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
