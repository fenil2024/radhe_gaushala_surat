import 'package:flutter/material.dart';

double? screenHeight;
double? screenWidth;
late BuildContext navigationContext;

extension SizedBoxExtension on int {
  Widget get toHeight {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget get toWidth {
    return SizedBox(
      width: toDouble(),
    );
  }
}
