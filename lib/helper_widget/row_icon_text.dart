import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/utility/utils.dart';

Widget rowIconText(String icon, String text, bool isSelected) {
  return Row(children: [
    SvgPicture.asset(
      icon,
      color: isSelected ? AppTheme.violent : AppTheme.black,
    ),
    Utils.customWidth(10),
    CustomText(text,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
        color: isSelected ? AppTheme.violent : AppTheme.black,
        fontSize: AppTheme.size15)
  ]);
}
