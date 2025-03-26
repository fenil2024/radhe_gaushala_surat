import 'package:flutter/material.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';

Widget shadedRowLineText(String text) {
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Color(0xff0046B6).withOpacity(0.5),
          ])),
        ),
      ),
      CustomText(
        "  $text  ",
        fontWeight: FontWeight.w600,
        fontSize: AppTheme.size20,
        color: AppTheme.violent,
        textAlign: TextAlign.start,
      ),
      Expanded(
        child: Container(
          height: 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff0046B6).withOpacity(0.5),
            Colors.white,
          ])),
        ),
      )
    ],
  );
}
