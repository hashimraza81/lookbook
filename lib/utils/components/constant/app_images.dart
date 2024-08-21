import 'package:flutter/material.dart';

class AppImages extends AssetImage {
  const AppImages(super.assetName);
  static const String _assetsPath = 'assets/Images';
  static const String _iconPath = 'assets/Icons';
//PNG images
  static const String splash = '$_assetsPath/splash.png';
  static const String splash1 = '$_assetsPath/splash1.png';
  static const String splash2 = '$_assetsPath/splash2.png';

//Icons Svg

  static const String googlelogo = '$_iconPath/GoogleLogo.svg';
  static const String applelogo = '$_iconPath/AppleLogo.svg';
  static const String menu = '$_iconPath/Menu.svg';
  static const String line = '$_iconPath/line.svg';
  static const String shopping = '$_iconPath/shopping.svg';
  static const String img = '$_iconPath/img.svg';
  static const String add = '$_iconPath/add.svg';
}
