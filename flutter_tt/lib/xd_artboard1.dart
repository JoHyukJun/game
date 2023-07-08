import 'package:flutter/material.dart';

class XDArtboard1 extends StatelessWidget {
  XDArtboard1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.529, -0.594),
            child: SizedBox(
              width: 103.0,
              height: 38.0,
              child: Text(
                'Case Sensetive\n',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 16,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
