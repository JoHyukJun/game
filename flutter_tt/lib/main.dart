import 'package:flutter/material.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_tt/parser.dart';
import 'package:logger/logger.dart';
import 'dart:developer';
import 'dart:async';
import 'dart:io';
import 'package:xml/xml.dart';

import 'xd_web19201.dart';


var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XD to Flutter example',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: XDWeb19201(
      ), 

      
    );
  }
}