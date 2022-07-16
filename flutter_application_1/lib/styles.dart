import 'package:flutter/material.dart';

class Styles {

  static const _textSizeEnormous = 40.0;
  static const _textSizeHuge = 32.0;
  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 18.0;
  static const _textSizeSmall = 12.0;
  static const _textFontNameDefault = 'Aller';
  static const _headerFrontNameDefault = 'PlayfairDisplay';
  static const _boldDefault = FontWeight.bold;
  static const _hyperLinkColorDefault = Color.fromARGB(255, 81, 188, 207);

  static const appBarDefault = TextStyle(
    fontFamily: 'Oswald',
    fontSize: _textSizeHuge,
    fontWeight: _boldDefault,
  );

  static const linkDefault = TextStyle(
    fontFamily: _textFontNameDefault,
    fontSize: _textSizeDefault,
    color: _hyperLinkColorDefault,
  );

  static const textSmall = TextStyle(
    fontFamily: _textFontNameDefault,
    fontSize: _textSizeSmall,
  );

  static const textDefault = TextStyle(
    fontFamily: _textFontNameDefault,
    fontSize: _textSizeDefault,
  );

  static const textLarge = TextStyle(
    fontFamily: _textFontNameDefault,
    fontSize: _textSizeLarge,
  );

  static const textHuge = TextStyle(
    fontFamily: _textFontNameDefault,
    fontSize: _textSizeHuge,
  );

  static const textEnormous = TextStyle(
    fontFamily: _textFontNameDefault,
    fontSize: _textSizeEnormous,
  );

  static const headerSmall = TextStyle(
    fontFamily: _headerFrontNameDefault,
    fontSize: _textSizeSmall,
    fontWeight: _boldDefault,
  );

  static const headerDefault = TextStyle(
    fontFamily: _headerFrontNameDefault,
    fontSize: _textSizeDefault,
    fontWeight: _boldDefault,
  );

  static const headerLarge = TextStyle(
    fontFamily: _headerFrontNameDefault,
    fontSize: _textSizeLarge,
    fontWeight: _boldDefault,
  );

  static const headerHuge = TextStyle(
    fontFamily: _headerFrontNameDefault,
    fontSize: _textSizeHuge,
    fontWeight: _boldDefault,
  );

  static const headerEnomous = TextStyle(
    fontFamily: _headerFrontNameDefault,
    fontSize: _textSizeEnormous,
    fontWeight: _boldDefault,
  );
}