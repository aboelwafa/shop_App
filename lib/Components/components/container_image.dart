import 'package:flutter/material.dart';

import '../styles/colors.dart';

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
  
            child: Image.asset('assets/images/airMax270.png'),
  
          );