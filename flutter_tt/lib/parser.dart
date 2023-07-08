import 'package:file_picker/file_picker.dart';
import 'package:logger/logger.dart';
import 'dart:developer';
import 'dart:async';
import 'dart:io';
import 'package:xml/xml.dart';


var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);


class NfoParser {
  NfoParser() {
    logger.d("NfoParser");
  }

  void _openNfoFiles() async {
  
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['nfo'],
      allowMultiple: true
    );

    if(result != null) {
      List<File> files = result.paths.map((path) => File(path.toString())).toList();

      for (int i = 0; i < files.length; i++) {
        logger.d(files[i].toString());
        var xml_contents = await files[i].readAsString();

        var par_contents = XmlDocument.parse(xml_contents);

        var actor = par_contents.findAllElements("actor").first;

        logger.d(actor.toString());
      }
    }
    else {
      logger.e(result.toString());
    }
  }

  void _openNfoDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory == null) {
      logger.e("No selected directory");
    }
    else {
      logger.d(selectedDirectory);
    }
  }
}