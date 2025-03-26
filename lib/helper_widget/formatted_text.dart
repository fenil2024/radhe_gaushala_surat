import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';

Widget formatedTextTapable({
  required String rawText,
  TextStyle? normalStyle,
  bool isFormateTextShow = true,
  bool isOnTapEnabled = false,
  TextStyle? formateStyle,
  TextAlign? textAlign,
  List<dynamic>? onTapLinks,
  Function(String)? onTap,
}) {
  final List<String> spans = rawText.split('#');

  List<InlineSpan> textSpans = [];
  List<Map<String, int>> formtText = [];
  int count = 0;
  spans.forEach((el) {
    //This logic is for need to add * in current word (el)
    String customText = '';
    int length = '*'.allMatches(el).length;

    try {
      if (length > 2) {
        customText = el.substring(1, el.length - 1);
      }
      if (el.contains("*")) {
        formtText.add({el.replaceAll("*", ''): count});
        count++;
      }
    } catch (e) {}

    TextSpan textSpan = !el.contains('*')
        ? TextSpan(
            text: el,
            style: normalStyle?.copyWith(
                  fontFamily: AppTheme.Figtree,
                ) ??
                TextStyle(
                    fontFamily: AppTheme.Figtree,
                    fontSize: AppTheme.size12,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.black))
        : isFormateTextShow
            ? TextSpan(
                text: length > 2 ? customText : el.replaceAll('*', ''),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // if (isOnTapEnabled)
                    //   try {
                    //     if (onTapLinks != null) {
                    //       String str = el.replaceAll('*', '');
                    //       formtText.forEach((element) {
                    //         if (element.keys.contains(str)) {
                    //           if ((onTapLinks[element.values.first])
                    //               .toString()
                    //               .contains('.pdf')) {
                    //             MapEntry<String, dynamic> data =
                    //                 MapEntry('data', {
                    //               'title': str,
                    //               'view': onTapLinks[element.values.first],
                    //               'color': AppThemeV3.white,
                    //               'titleColor': AppThemeV3.black,
                    //             });
                    //             BlocEventV3.setPDFDocumentData(data);
                    //             BlocEventV3.push(Routes.commonPDFViewScreen);
                    //           } else {
                    //             if ((onTapLinks[element.values.first])
                    //                 .toString()
                    //                 .contains('<html>')) {
                    //               commonWebData =
                    //                   onTapLinks[element.values.first];
                    //             } else {
                    //               commonWebUrl =
                    //                   onTapLinks[element.values.first];
                    //             }
                    //             commonWebTitle = str;
                    //             BlocEventV3.push(Routes.commonWebView);
                    //           }
                    //         }
                    //       });
                    //     }
                    //   } catch (e, s) {

                    //   }

                    if (onTap != null) {
                      onTap(el.replaceAll('*', '')); // Pass tapped text here
                    }
                  },
                style: formateStyle?.copyWith(
                      fontFamily: AppTheme.Figtree,
                      backgroundColor: Colors.transparent,
                    ) ??
                    TextStyle(
                        fontFamily: AppTheme.Figtree,
                        height: 1.5,
                        fontSize: AppTheme.size12,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.black))
            : TextSpan();
    textSpans.add(textSpan);
  });
  return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        children: textSpans,
      ));
}
