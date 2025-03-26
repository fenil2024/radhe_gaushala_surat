import 'package:flutter/material.dart';
import 'package:radhe_gaushala/cubits/bloc_events.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';

AppBar customAppBar(String title,
    {bool isCenter = false,
    bool showActions = false,
    bool isBack = false,
    VoidCallback? onTap,
    PreferredSizeWidget? bottomTab,
    bool showNotification = true,
    List<Widget> customActionWidget = const []}) {
  return AppBar(
    backgroundColor: AppTheme.white,
    elevation: 1,
    shadowColor: Colors.grey.withOpacity(0.3),
    foregroundColor: AppTheme.white,
    surfaceTintColor: AppTheme.white,
    centerTitle: isCenter,
    titleSpacing: 0.0,
    bottom: bottomTab,
    leading: GestureDetector(
      onTap: () {
        if (isBack) {
          BlocEvent.pop();
        } else {
          onTap!.call();
        }
      },
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: isBack
              ? Assets.icon.backArrow.svg(height: 20, width: 20)
              : Assets.icon.menu.svg(height: 20, width: 20),
        ),
      ),
    ),
    title: CustomText(
      title,
      fontSize: AppTheme.size18,
      fontWeight: FontWeight.w500,
    ),
    actions: showActions
        ? (customActionWidget.isNotEmpty)
            ? customActionWidget
            : [
                Padding(
                  padding: !showNotification
                      ? EdgeInsets.only(right: 10)
                      : EdgeInsets.zero,
                  child: Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      child: Assets.icon.search.svg()),
                ),
                if (showNotification)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.all(8),
                        height: 40,
                        width: 40,
                        child: Assets.icon.notification.svg()),
                  ),
              ]
        : null,
  );
}
