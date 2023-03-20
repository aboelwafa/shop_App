import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

Widget containerIcon({
double height=70,
double width=70,
double raduis=20, 
BoxBorder? border,
// Color? backcolor,
IconData? icon,
double size=30,
String pathImage='',
})=> Container(
              height: height,
              width : width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(raduis),
                color: MyColors.fillcolor,
                border: border,
                image: DecorationImage(image: AssetImage(pathImage))
              ),
              child: Icon(icon,size: size,color: MyColors.textPrimary,),
            );