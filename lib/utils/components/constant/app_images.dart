import 'package:flutter/material.dart';

class AppImages extends AssetImage {
  const AppImages(super.assetName);
  static const String _assetsPath = 'assets/Images';
  static const String _iconPath = 'assets/Icons';
//PNG images
  static const String splash = '$_assetsPath/splash.png';
  static const String splash1 = '$_assetsPath/splash1.png';
  static const String splash2 = '$_assetsPath/splash2.png';
  static const String profile = '$_assetsPath/profile.png';
  static const String photographer = '$_assetsPath/photographer.png';
  static const String noti = '$_assetsPath/noti.png';
  static const String product1 = '$_assetsPath/product1.png';

//Icons Svg

  static const String googlelogo = '$_iconPath/GoogleLogo.svg';
  static const String applelogo = '$_iconPath/AppleLogo.svg';
  static const String menu = '$_iconPath/Menu.svg';
  static const String line = '$_iconPath/line.svg';
  static const String shopping = '$_iconPath/shopping.svg';
  static const String img = '$_iconPath/img.svg';
  static const String add = '$_iconPath/add.svg';
  static const String plus = '$_iconPath/plus.svg';

  static const String phone = '$_iconPath/phone.svg';
  static const String mail = '$_iconPath/mail.svg';
  static const String social = '$_iconPath/social.svg';
}
