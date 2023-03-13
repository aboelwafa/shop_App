// ignore_for_file: non_constant_identifier_names, unused_import, file_names, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

Widget StrokText(
  {
    required String strokeText,
    FontStyle FontStyle=FontStyle.italic,
   required double  strokeSize,
   required double strokeWidth,
   required Color strokeColor,
   required String solidText,
   required double  solidSize,
   required Color solidColor,
   double spacing=2,
  }
)=>Stack(
      children: <Widget>[
        // Stroked text as border.
        Text(
          strokeText,
          style: TextStyle(
            letterSpacing:spacing ,
           fontStyle: FontStyle,
            fontSize: strokeSize,
            foreground: Paint()
       ..style = PaintingStyle.stroke
       ..strokeWidth = strokeWidth
       ..color =strokeColor,
          ),
        ),
        // Solid text as fill.
        Text(
          solidText,
          style: TextStyle(
            letterSpacing:spacing ,
           fontStyle: FontStyle,
            fontSize: solidSize,
            color:solidColor,
          ),
        ),
      ],
    );