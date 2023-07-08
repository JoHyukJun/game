import 'package:flutter/material.dart';

class XDComponent21 extends StatelessWidget {
  XDComponent21({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
        Align(
          alignment: Alignment(0.005, 0.0),
          child: SizedBox(
            width: 239.0,
            height: 133.0,
            child: Text(
              'Hello',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 111,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
