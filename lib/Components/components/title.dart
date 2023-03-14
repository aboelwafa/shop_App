import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/styles.dart';

Widget myTitle({required String text}) => Center(
        child: Text(
      text,
      style: Styles.style22,
    ));
Widget subTitle({required String text}) => Text(
      text,
      style: Styles.style24,
    );
Widget miSubTitle({required String text}) => Text(
      text,
      style: Styles.style21,
    );
    Widget infoTitle({required String text})=>Text(
                text,
                style: Styles.grayText,
              );

