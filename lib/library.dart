import 'package:flutter/material.dart';
import 'package:unit_converter/area.dart';
import 'package:unit_converter/length.dart';

goToLengthPage(context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => Length(
        title: 'Length',
      ),
    ),
  );
}

goToAreaPage(context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => Area(
        title: 'Area',
      ),
    ),
  );
}
