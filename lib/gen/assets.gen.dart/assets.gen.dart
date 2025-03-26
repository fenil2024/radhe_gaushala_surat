/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/back_arrow.svg
  SvgGenImage get backArrow => const SvgGenImage('assets/icon/back_arrow.svg');

  /// File path: assets/icon/blue_heart.svg
  SvgGenImage get blueHeart => const SvgGenImage('assets/icon/blue_heart.svg');

  /// File path: assets/icon/contact_us.svg
  SvgGenImage get contactUs => const SvgGenImage('assets/icon/contact_us.svg');

  /// File path: assets/icon/current_month.svg
  SvgGenImage get currentMonth =>
      const SvgGenImage('assets/icon/current_month.svg');

  /// File path: assets/icon/down_arrow.svg
  SvgGenImage get downArrow => const SvgGenImage('assets/icon/down_arrow.svg');

  /// File path: assets/icon/edit_profile.svg
  SvgGenImage get editProfile =>
      const SvgGenImage('assets/icon/edit_profile.svg');

  /// File path: assets/icon/faqs.svg
  SvgGenImage get faqs => const SvgGenImage('assets/icon/faqs.svg');

  /// File path: assets/icon/gallery.svg
  SvgGenImage get gallery => const SvgGenImage('assets/icon/gallery.svg');

  /// File path: assets/icon/login_background.png
  AssetGenImage get loginBackground =>
      const AssetGenImage('assets/icon/login_background.png');

  /// File path: assets/icon/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icon/menu.svg');

  /// File path: assets/icon/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icon/notification.svg');

  /// File path: assets/icon/otp_background.png
  AssetGenImage get otpBackground =>
      const AssetGenImage('assets/icon/otp_background.png');

  /// File path: assets/icon/paid_bill_history.svg
  SvgGenImage get paidBillHistory =>
      const SvgGenImage('assets/icon/paid_bill_history.svg');

  /// File path: assets/icon/pending_bill.svg
  SvgGenImage get pendingBill =>
      const SvgGenImage('assets/icon/pending_bill.svg');

  /// File path: assets/icon/product.svg
  SvgGenImage get product => const SvgGenImage('assets/icon/product.svg');

  /// File path: assets/icon/rate_us.svg
  SvgGenImage get rateUs => const SvgGenImage('assets/icon/rate_us.svg');

  /// File path: assets/icon/red_heart.svg
  SvgGenImage get redHeart => const SvgGenImage('assets/icon/red_heart.svg');

  /// File path: assets/icon/refer_earn.svg
  SvgGenImage get referEarn => const SvgGenImage('assets/icon/refer_earn.svg');

  /// File path: assets/icon/right_arrow.svg
  SvgGenImage get rightArrow =>
      const SvgGenImage('assets/icon/right_arrow.svg');

  /// File path: assets/icon/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icon/search.svg');

  /// File path: assets/icon/star.svg
  SvgGenImage get star => const SvgGenImage('assets/icon/star.svg');

  /// File path: assets/icon/transaction_history.svg
  SvgGenImage get transactionHistory =>
      const SvgGenImage('assets/icon/transaction_history.svg');

  /// File path: assets/icon/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icon/user.svg');

  /// File path: assets/icon/video_player.svg
  SvgGenImage get videoPlayer =>
      const SvgGenImage('assets/icon/video_player.svg');

  /// List of all assets
  List<dynamic> get values => [
        backArrow,
        blueHeart,
        contactUs,
        currentMonth,
        downArrow,
        editProfile,
        faqs,
        gallery,
        loginBackground,
        menu,
        notification,
        otpBackground,
        paidBillHistory,
        pendingBill,
        product,
        rateUs,
        redHeart,
        referEarn,
        rightArrow,
        search,
        star,
        transactionHistory,
        user,
        videoPlayer
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/fake_buttermilk.png
  AssetGenImage get fakeButtermilk =>
      const AssetGenImage('assets/images/fake_buttermilk.png');

  /// File path: assets/images/fake_dashboard_banner.png
  AssetGenImage get fakeDashboardBanner =>
      const AssetGenImage('assets/images/fake_dashboard_banner.png');

  /// List of all assets
  List<AssetGenImage> get values => [fakeButtermilk, fakeDashboardBanner];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/launcher_icon.png
  AssetGenImage get launcherIcon =>
      const AssetGenImage('assets/logo/launcher_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [launcherIcon];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
