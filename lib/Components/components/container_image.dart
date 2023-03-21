import 'package:flutter/material.dart';
Widget myContainerProduct({
  required Widget child ,
  double width=170,
  double height=220,
  required Color backgroundColor,
  double radius=24,
 
  
  })=>Container(
  
            width: width,
  
            height: height,
  
            decoration: BoxDecoration(
  
              color: backgroundColor,
  
              borderRadius:  BorderRadius.all(Radius.circular(radius)),
  
            ),
  
            child: child,
  
          );