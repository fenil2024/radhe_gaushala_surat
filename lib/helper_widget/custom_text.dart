import 'package:flutter/material.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';

class CustomText extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? wordSpacing;
  final double? letterSpacing;
  final double? height;
  final Color? backgroundColor;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final FontStyle? fontStyle;

  const CustomText(
    this.title, {
    this.fontWeight = FontWeight.w400,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.wordSpacing,
    this.letterSpacing,
    this.height,
    this.backgroundColor,
    this.decoration,
    this.decorationColor,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppTheme.black,
          fontFamily: fontFamily ?? AppTheme.Figtree,
          fontSize: fontSize ?? AppTheme.size14,
          wordSpacing: wordSpacing,
          letterSpacing: letterSpacing,
          backgroundColor: backgroundColor,
          height: height,
          decoration: decoration,
          decorationColor: decorationColor,
          fontStyle: fontStyle),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
