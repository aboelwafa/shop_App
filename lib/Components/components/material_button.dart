import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

Widget myButton({
  required EdgeInsetsGeometry padding,
  double height=60,
  double raduis=50,
    double width=double.infinity,
   required Color backgroundColor,
required String data,
required TextStyle style,
required void Function() onPressed,
})=>Padding(
            padding: padding,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(raduis),
                color: backgroundColor,
              ),
              child: MaterialButton(
                onPressed: onPressed,
                child: Text(
                  data,
                  style: style,
                ),
              ),
            ),
          );