import 'package:flutter/material.dart';

class XDComponent11 extends StatelessWidget {
  XDComponent11({
    Key key,
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
        Center(
          child: SizedBox(
            width: 274.0,
            height: 133.0,
            child: Text(
              'World',
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
