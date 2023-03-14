import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

abstract class Styles
{
  static String  kFontfamily='sf-ui-display';
  static TextStyle style22= TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: MyColors.textPrimary
  );
  static TextStyle style24= TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: MyColors.textPrimary
  );
   static TextStyle style21= TextStyle(
    fontSize: 22,
    color: MyColors.textPrimary
  );
  static TextStyle w40018= TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: MyColors.textPrimary
  );
  static TextStyle grayText= TextStyle(
            color: MyColors.textSecondary,
            fontSize: 22,
            fontWeight: FontWeight.w600
          );
          static TextStyle hintStyle= TextStyle(
            color: MyColors.textSecondary,
            fontSize: 18,
            fontWeight: FontWeight.w300
          );
      static TextStyle styleButton= TextStyle(color: MyColors.white, fontSize: 18);
}