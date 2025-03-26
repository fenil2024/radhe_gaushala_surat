import 'package:flutter/material.dart';
import 'package:radhe_gaushala/utility/globals.dart';

class Utils {
  static void getSize(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  static Widget customWidth(double width) {
    return SizedBox(width: width);
  }

  static Widget customHeight(double height) {
    return SizedBox(height: height);
  }
}
